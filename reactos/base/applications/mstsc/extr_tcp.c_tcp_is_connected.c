
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sockaddr ;
typedef int RD_BOOL ;


 int False ;
 int True ;
 int g_sock ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;

RD_BOOL
tcp_is_connected()
{
 struct sockaddr_in sockaddr;
 socklen_t len = sizeof(sockaddr);
 if (getpeername(g_sock, (struct sockaddr *) &sockaddr, &len))
  return True;
 return False;
}
