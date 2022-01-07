
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_LISTEN ;
 int* rcv_fds ;

__attribute__((used)) static bool is_listen_fd(int fd)
{
 int i;

 for (i = 0; i < N_LISTEN; i++) {
  if (rcv_fds[i] == fd)
   return 1;
 }
 return 0;
}
