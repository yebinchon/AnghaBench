
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fds; } ;
typedef TYPE_1__ socket_set ;


 scalar_t__ FD_ISSET (int,int *) ;

__attribute__((used)) static bool
socket_has_input(socket_set *sa, int fd, int idx)
{
 return (FD_ISSET(fd, &sa->fds) != 0);
}
