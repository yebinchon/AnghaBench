
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PqCommBusy ;
 int internal_flush () ;
 int socket_set_nonblocking (int) ;

__attribute__((used)) static int
socket_flush(void)
{
 int res;


 if (PqCommBusy)
  return 0;
 PqCommBusy = 1;
 socket_set_nonblocking(0);
 res = internal_flush();
 PqCommBusy = 0;
 return res;
}
