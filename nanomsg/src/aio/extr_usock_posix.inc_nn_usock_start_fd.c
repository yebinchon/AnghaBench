
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {int fsm; } ;


 int NN_USOCK_ACTION_STARTED ;
 int nn_fsm_action (int *,int ) ;
 int nn_fsm_start (int *) ;
 int nn_usock_init_from_fd (struct nn_usock*,int) ;

void nn_usock_start_fd (struct nn_usock *self, int fd)
{
    nn_usock_init_from_fd (self, fd);
    nn_fsm_start (&self->fsm);
    nn_fsm_action (&self->fsm, NN_USOCK_ACTION_STARTED);
}
