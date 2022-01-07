
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef scalar_t__ SOCKET ;


 scalar_t__ INVALID_SOCKET ;
 int TranslateSocketError () ;
 scalar_t__ WSAAccept (scalar_t__,struct sockaddr*,int*,int *,int ) ;
 int pgwin32_poll_signals () ;

SOCKET
pgwin32_accept(SOCKET s, struct sockaddr *addr, int *addrlen)
{
 SOCKET rs;





 pgwin32_poll_signals();

 rs = WSAAccept(s, addr, addrlen, ((void*)0), 0);
 if (rs == INVALID_SOCKET)
 {
  TranslateSocketError();
  return INVALID_SOCKET;
 }
 return rs;
}
