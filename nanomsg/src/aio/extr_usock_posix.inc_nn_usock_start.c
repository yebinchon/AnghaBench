
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {int fsm; } ;


 int SOCK_CLOEXEC ;
 int errno ;
 int nn_fsm_start (int *) ;
 scalar_t__ nn_slow (int) ;
 int nn_usock_init_from_fd (struct nn_usock*,int) ;
 int socket (int,int,int) ;

int nn_usock_start (struct nn_usock *self, int domain, int type, int protocol)
{
    int s;
    s = socket (domain, type, protocol);
    if (nn_slow (s < 0))
       return -errno;

    nn_usock_init_from_fd (self, s);


    nn_fsm_start (&self->fsm);

    return 0;
}
