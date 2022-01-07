
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EINPROGRESS ;
 int EINTR ;
 int EWOULDBLOCK ;
 scalar_t__ WSAEINTR ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 int mg_get_errno () ;

__attribute__((used)) static int mg_is_error(void) {
  int err = mg_get_errno();
  return err != EINPROGRESS && err != EWOULDBLOCK

         && err != EAGAIN && err != EINTR




      ;
}
