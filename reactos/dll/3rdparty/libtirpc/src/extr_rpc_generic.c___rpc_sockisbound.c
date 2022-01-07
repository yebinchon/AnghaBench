
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int * sun_path; int sin6_port; int sin_port; } ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int * sun_path; int sin6_port; int sin_port; } ;
struct sockaddr_in {int * sun_path; int sin6_port; int sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int SOCKET ;





 scalar_t__ SOCKET_ERROR ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int memcpy (struct sockaddr_un*,struct sockaddr_storage*,int) ;

int
__rpc_sockisbound(SOCKET fd)
{
 struct sockaddr_storage ss;
 union {
  struct sockaddr_in sin;
  struct sockaddr_in6 sin6;

  struct sockaddr_un usin;

 } u_addr;
 socklen_t slen;

 slen = sizeof (struct sockaddr_storage);
 if (getsockname(fd, (struct sockaddr *)(void *)&ss, &slen) == SOCKET_ERROR)
  return 0;

 switch (ss.ss_family) {
  case 130:
   memcpy(&u_addr.sin, &ss, sizeof(u_addr.sin));
   return (u_addr.sin.sin_port != 0);






  case 128:

   memcpy(&u_addr.usin, &ss, sizeof(u_addr.usin));
   return (u_addr.usin.sun_path[0] != 0);

  default:
   break;
 }

 return 0;
}
