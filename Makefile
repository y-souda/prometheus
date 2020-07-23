all: build start                                           

check:
	@/usr/local/bin/docker-compose ps
build:                                                     
	@/usr/local/bin/docker-compose build --no-cache    
start:                                                     
	@/usr/local/bin/docker-compose up -d --no-build    
	@/usr/local/bin/docker-compose ps                  
restart:
	@/usr/local/bin/docker-compose up -d --force-recreate
	@/usr/local/bin/docker-compose ps
upgrade:
	@/usr/local/bin/docker-compose pull
	@/usr/local/bin/docker-compose up -d --force-recreate
	@/usr/local/bin/docker-compose ps                  
clean:                                                     
	@/usr/local/bin/docker-compose down -v
	@/usr/local/bin/docker-compose rm -f
