
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_worker_pool_s {int dummy; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_family; struct addrinfo* ai_next; int ai_socktype; } ;


 int AF_UNSPEC ;
 int INET6_ADDRSTRLEN ;
 int SOCK_STREAM ;
 int ZLOG_DEBUG ;
 int ZLOG_ERROR ;
 int ZLOG_WARNING ;
 int fpm_get_in_addr (int ) ;
 int fpm_sockets_get_listening_socket (struct fpm_worker_pool_s*,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int inet_ntop (int ,int ,char*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int zlog (int ,char*,char const*,...) ;

__attribute__((used)) static int fpm_socket_af_inet_socket_by_addr(struct fpm_worker_pool_s *wp, const char *addr, const char *port)
{
 struct addrinfo hints, *servinfo, *p;
 char tmpbuf[INET6_ADDRSTRLEN];
 int status;
 int sock = -1;

 memset(&hints, 0, sizeof hints);
 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;

 if ((status = getaddrinfo(addr, port, &hints, &servinfo)) != 0) {
  zlog(ZLOG_ERROR, "getaddrinfo: %s\n", gai_strerror(status));
  return -1;
 }

 for (p = servinfo; p != ((void*)0); p = p->ai_next) {
  inet_ntop(p->ai_family, fpm_get_in_addr(p->ai_addr), tmpbuf, INET6_ADDRSTRLEN);
  if (sock < 0) {
   if ((sock = fpm_sockets_get_listening_socket(wp, p->ai_addr, p->ai_addrlen)) != -1) {
    zlog(ZLOG_DEBUG, "Found address for %s, socket opened on %s", addr, tmpbuf);
   }
  } else {
   zlog(ZLOG_WARNING, "Found multiple addresses for %s, %s ignored", addr, tmpbuf);
  }
 }

 freeaddrinfo(servinfo);

 return sock;
}
