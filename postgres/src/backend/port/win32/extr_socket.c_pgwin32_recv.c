
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* buf; } ;
typedef TYPE_1__ WSABUF ;
typedef int SOCKET ;
typedef int DWORD ;


 int EWOULDBLOCK ;
 int FD_ACCEPT ;
 int FD_CLOSE ;
 int FD_READ ;
 int INFINITE ;
 int NOTICE ;
 int SOCKET_ERROR ;
 int TranslateSocketError () ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 int WSARecv (int ,TYPE_1__*,int,int*,int*,int *,int *) ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*) ;
 int errno ;
 int pg_usleep (int) ;
 scalar_t__ pgwin32_noblock ;
 scalar_t__ pgwin32_poll_signals () ;
 scalar_t__ pgwin32_waitforsinglesocket (int ,int,int ) ;

int
pgwin32_recv(SOCKET s, char *buf, int len, int f)
{
 WSABUF wbuf;
 int r;
 DWORD b;
 DWORD flags = f;
 int n;

 if (pgwin32_poll_signals())
  return -1;

 wbuf.len = len;
 wbuf.buf = buf;

 r = WSARecv(s, &wbuf, 1, &b, &flags, ((void*)0), ((void*)0));
 if (r != SOCKET_ERROR)
  return b;

 if (WSAGetLastError() != WSAEWOULDBLOCK)
 {
  TranslateSocketError();
  return -1;
 }

 if (pgwin32_noblock)
 {




  errno = EWOULDBLOCK;
  return -1;
 }



 for (n = 0; n < 5; n++)
 {
  if (pgwin32_waitforsinglesocket(s, FD_READ | FD_CLOSE | FD_ACCEPT,
          INFINITE) == 0)
   return -1;

  r = WSARecv(s, &wbuf, 1, &b, &flags, ((void*)0), ((void*)0));
  if (r != SOCKET_ERROR)
   return b;
  if (WSAGetLastError() != WSAEWOULDBLOCK)
  {
   TranslateSocketError();
   return -1;
  }
  pg_usleep(10000);
 }
 ereport(NOTICE,
   (errmsg_internal("could not read from ready socket (after retries)")));
 errno = EWOULDBLOCK;
 return -1;
}
