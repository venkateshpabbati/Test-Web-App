#Pulling a Base Image
FROM ubuntu
#Setting up workdir to copy all the code inside the container
WORKDIR /app
# To Update Ubuntu OS
RUN apt-get update -y
#To Install apache2 Webserver
RUN apt-get install apache2 -y
#Copy the code from local to inside the docker images
COPY . /var/www/html
#Start Apache start Server
ENTRYPOINT apachectl -D FOREGROUND



