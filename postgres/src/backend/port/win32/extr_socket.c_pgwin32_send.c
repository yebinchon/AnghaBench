
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* buf; } ;
typedef TYPE_1__ WSABUF ;
typedef int SOCKET ;
typedef scalar_t__ DWORD ;


 int EWOULDBLOCK ;
 int FD_CLOSE ;
 int FD_WRITE ;
 int INFINITE ;
 int SOCKET_ERROR ;
 int TranslateSocketError () ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 int WSASend (int ,TYPE_1__*,int,scalar_t__*,int,int *,int *) ;
 int errno ;
 scalar_t__ pgwin32_noblock ;
 scalar_t__ pgwin32_poll_signals () ;
 scalar_t__ pgwin32_waitforsinglesocket (int ,int,int ) ;

int
pgwin32_send(SOCKET s, const void *buf, int len, int flags)
{
 WSABUF wbuf;
 int r;
 DWORD b;

 if (pgwin32_poll_signals())
  return -1;

 wbuf.len = len;
 wbuf.buf = (char *) buf;





 for (;;)
 {
  r = WSASend(s, &wbuf, 1, &b, flags, ((void*)0), ((void*)0));
  if (r != SOCKET_ERROR && b > 0)

   return b;

  if (r == SOCKET_ERROR &&
   WSAGetLastError() != WSAEWOULDBLOCK)
  {
   TranslateSocketError();
   return -1;
  }

  if (pgwin32_noblock)
  {




   errno = EWOULDBLOCK;
   return -1;
  }



  if (pgwin32_waitforsinglesocket(s, FD_WRITE | FD_CLOSE, INFINITE) == 0)
   return -1;
 }

 return -1;
}
