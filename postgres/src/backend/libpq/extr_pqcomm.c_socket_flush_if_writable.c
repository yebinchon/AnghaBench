
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PqCommBusy ;
 scalar_t__ PqSendPointer ;
 scalar_t__ PqSendStart ;
 int internal_flush () ;
 int socket_set_nonblocking (int) ;

__attribute__((used)) static int
socket_flush_if_writable(void)
{
 int res;


 if (PqSendPointer == PqSendStart)
  return 0;


 if (PqCommBusy)
  return 0;


 socket_set_nonblocking(1);

 PqCommBusy = 1;
 res = internal_flush();
 PqCommBusy = 0;
 return res;
}
