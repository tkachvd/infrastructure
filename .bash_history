sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
sudo systemctl status docker
sudo docker run hello-world
sudo docker run -d nginx
docker ps -a
sudo docker ps -a
ss -tpln
sudo docker stop 739d67e31d05
sudo docker rm 739d67e31d05 77e9fb554aa0
docker ps -a
sudo docker ps -a
sudo docker run -d -p 80:80 --rm nginx
ss -tpln | grep 80
sudo mkdir html
sudo mkdir conf
cd html
sudo vi index.html
cd
cd conf
sudo vi default.conf
sudo docker stop $(docker ps -aq)
sudo docker run -d -p 80:80 --rm --name nginx -v '/home/tkachvda/conf:/etc/nginx/conf.d' -v '/home/tkachvda/html:/usr/share/nginx/html' nginx
docker ps -a
sudo docker ps -a
sudo docker rm 5dbeb576f949
sudo docker stop 5dbeb576f949
sudo docker rm 5dbeb576f949
docker run -d -p 80:80 --rm --name nginx -v '/home/tkachvda/conf:/etc/nginx/conf.d' -v '/home/tkachvda/html:/usr/share/nginx/html' nginx
sudo docker run -d -p 80:80 --rm --name nginx -v '/home/tkachvda/conf:/etc/nginx/conf.d' -v '/home/tkachvda/html:/usr/share/nginx/html' nginx
cd
sudo vi Dockerfile
docker build -t nginx-lab .
sudo docker build -t nginx-lab .
sudo docker run -d -p 80:80 --rm --name nginx nginx-lab
docker stop a47912c80fabd8af1aacc268f81151ca6768b10cad7433ca29609156ec7a6c76
sudo docker stop a47912c80fabd8af1aacc268f81151ca6768b10cad7433ca29609156ec7a6c76
sudo docker run -d -p 80:80 --rm --name nginx nginx-lab
sudo docker images -a
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo vi docker-compose.yml
sudo docker-compose config
sudo docker-compose up
sudo docker stop fff0f030e7cb7d5795a94e56600c7afbb5e04dc6127cb0b96e09bc546a8a7371
sudo docker rm fff0f030e7cb7d5795a94e56600c7afbb5e04dc6127cb0b96e09bc546a8a7371
sudo docker-compose up
version: "3.9"
services:
  nginx:
    image: "nginx:latest"
    container_name: nginx
    ports:
      - "80:80"
    volumes: 
      - ./conf/default.conf:/etc/nginx/conf.d/default.conf
      - ./html:/usr/share/nginx/html 
    depends_on:
      - php-fpm
  php-fpm:

    container_name: php-fpm
    volumes:
      - ./html:/usr/share/nginx/html
sudo vi docker-compose.yml
cd conf
sudo vi default.conf
sudo docker-compose up
cd html
sudo vi index.php
cd
sudo vi docker-compose.yml
sudo docker-compose up -d
docker-compose ps
sudo version: "3.9" 
services:
  nginx:
    image: "nginx:latest"
    container_name: nginx
    ports:
      - "80:80"
    volumes: 
      - ./conf:/etc/nginx/conf.d
      - ./html:/usr/share/nginx/html 
    depends_on:
      - php-fpm
  php-fpm:
    image: "php:7.4-fpm"
    container_name: php-fpm
    volumes: 
      - ./html:/usr/share/nginx/html
  mysql:
    image: "mysql:latest"
    container_name: mysql
    ports: 
      - "3306:3306"
    environment:
      MYSQL_ROOT_PASSWORD: Str0ngPaSSw0rd
    volumes:
      - ./data:/var/lib/mysql
sudo docker-compose ps
sudo docker-compose exec mysql bash
mkdir ./html/reg
sudo mkdir ./html/reg
git clone https://github.com/tkachvd/development.git ./html/reg/
sudo yum install git -y
git clone https://github.com/tkachvd/development.git ./html/reg/
sudo git clone https://github.com/tkachvd/development.git ./html/reg/
cd html
cd reg
ls
sudo vi db.php
cd
sudo vi Dockerfile
docker build -t "php:7.4-fpm-mysql" - < ./Dockerfile
sudo docker build -t "php:7.4-fpm-mysql" - < ./Dockerfile
sudo vi docker-compose.yml
docker-compose up
sudo docker-compose up
docker ps -a
sudo docker ps -a
sudo vi docker-compose.yml
docker-compose up
sudo docker-compose up
ping 192.168.168.129
docker-compose up -d
sudo vi docker-compose.yml
sudo vi reg_dump.sql
clear
docker-compose down
docker rmi $(docker images -aq)
sudo rm -rf conf/ data/ html/ docker-compose.yml Dockerfile reg_dump.sql .git/ .gitignore
sudo vi create_infrastructure.sh
./create_infrastructure.sh
sudo vi create_infrastructure.s
chmod 777 /home/tkachvda/create_infrastructure.sh
sudo chmod 777 /home/tkachvda/create_infrastructure.sh
./create_infrastructure.sh
sudo vi Dockerfile
./create_infrastructure.sh
ls
sudo rm Dockerfile
cd infrastructure
./create_infrastructure.sh
cd
./create_infrastructure.sh
