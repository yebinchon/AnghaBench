
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxfd; int fds; } ;
typedef TYPE_1__ socket_set ;


 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
add_socket_to_set(socket_set *sa, int fd, int idx)
{
 if (fd < 0 || fd >= FD_SETSIZE)
 {




  fprintf(stderr, "too many client connections for select()\n");
  exit(1);
 }
 FD_SET(fd, &sa->fds);
 if (fd > sa->maxfd)
  sa->maxfd = fd;
}
