
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int hints ;


 int AF_UNSPEC ;
 int EAI_SYSTEM ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int dbg (char*,char*,char*,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int socket (int ,int ,int ) ;
 int usbip_net_set_keepalive (int) ;
 int usbip_net_set_nodelay (int) ;

int usbip_net_tcp_connect(char *hostname, char *service)
{
 struct addrinfo hints, *res, *rp;
 int sockfd;
 int ret;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;


 ret = getaddrinfo(hostname, service, &hints, &res);
 if (ret < 0) {
  dbg("getaddrinfo: %s service %s: %s", hostname, service,
      gai_strerror(ret));
  return ret;
 }


 for (rp = res; rp; rp = rp->ai_next) {
  sockfd = socket(rp->ai_family, rp->ai_socktype,
    rp->ai_protocol);
  if (sockfd < 0)
   continue;


  usbip_net_set_nodelay(sockfd);

  usbip_net_set_keepalive(sockfd);

  if (connect(sockfd, rp->ai_addr, rp->ai_addrlen) == 0)
   break;

  close(sockfd);
 }

 freeaddrinfo(res);

 if (!rp)
  return EAI_SYSTEM;

 return sockfd;
}
