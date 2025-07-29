# Utilise une image Python officielle
FROM python:3.10-slim

# Définit le répertoire de travail
WORKDIR /app

# Copie les fichiers du projet dans le conteneur
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose le port 5000
EXPOSE 5000

# Lance l'application Flask
CMD ["python", "app.py"]
