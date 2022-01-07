
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int SOCKET ;


 int TranslateSocketError () ;
 int bind (int ,struct sockaddr*,int) ;

int
pgwin32_bind(SOCKET s, struct sockaddr *addr, int addrlen)
{
 int res;

 res = bind(s, addr, addrlen);
 if (res < 0)
  TranslateSocketError();
 return res;
}
