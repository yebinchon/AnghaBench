
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SOCKET ;


 int FIONBIO ;
 scalar_t__ INVALID_SOCKET ;
 int TranslateSocketError () ;
 scalar_t__ WSASocket (int,int,int,int *,int ,int ) ;
 int WSA_FLAG_OVERLAPPED ;
 scalar_t__ errno ;
 scalar_t__ ioctlsocket (scalar_t__,int ,unsigned long*) ;

SOCKET
pgwin32_socket(int af, int type, int protocol)
{
 SOCKET s;
 unsigned long on = 1;

 s = WSASocket(af, type, protocol, ((void*)0), 0, WSA_FLAG_OVERLAPPED);
 if (s == INVALID_SOCKET)
 {
  TranslateSocketError();
  return INVALID_SOCKET;
 }

 if (ioctlsocket(s, FIONBIO, &on))
 {
  TranslateSocketError();
  return INVALID_SOCKET;
 }
 errno = 0;

 return s;
}
