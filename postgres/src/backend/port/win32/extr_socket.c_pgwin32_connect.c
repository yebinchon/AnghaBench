
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int SOCKET ;


 int FD_CONNECT ;
 int INFINITE ;
 int TranslateSocketError () ;
 int WSAConnect (int ,struct sockaddr const*,int,int *,int *,int *,int *) ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ pgwin32_waitforsinglesocket (int ,int ,int ) ;

int
pgwin32_connect(SOCKET s, const struct sockaddr *addr, int addrlen)
{
 int r;

 r = WSAConnect(s, addr, addrlen, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 if (r == 0)
  return 0;

 if (WSAGetLastError() != WSAEWOULDBLOCK)
 {
  TranslateSocketError();
  return -1;
 }

 while (pgwin32_waitforsinglesocket(s, FD_CONNECT, INFINITE) == 0)
 {

 }

 return 0;
}
