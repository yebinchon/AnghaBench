
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sockaddr ;


 int g_sock ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int sprintf (char*,char*,int,int,int,int) ;
 int strcpy (char*,char*) ;

char *
tcp_get_address()
{
 static char ipaddr[32];
 struct sockaddr_in sockaddr;
 socklen_t len = sizeof(sockaddr);
 if (getsockname(g_sock, (struct sockaddr *) &sockaddr, &len) == 0)
 {
  uint8 *ip = (uint8 *) & sockaddr.sin_addr;
  sprintf(ipaddr, "%d.%d.%d.%d", ip[0], ip[1], ip[2], ip[3]);
 }
 else
  strcpy(ipaddr, "127.0.0.1");
 return ipaddr;
}
