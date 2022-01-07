
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxfd; int fds; } ;
typedef TYPE_1__ socket_set ;


 int FD_ZERO (int *) ;

__attribute__((used)) static void
clear_socket_set(socket_set *sa)
{
 FD_ZERO(&sa->fds);
 sa->maxfd = -1;
}
