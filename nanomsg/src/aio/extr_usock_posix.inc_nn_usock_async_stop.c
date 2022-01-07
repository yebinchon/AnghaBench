
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {int event_error; int fsm; int task_stop; int worker; } ;


 int NN_USOCK_SHUTDOWN ;
 int nn_fsm_raise (int *,int *,int ) ;
 int nn_worker_execute (int ,int *) ;

void nn_usock_async_stop (struct nn_usock *self)
{
    nn_worker_execute (self->worker, &self->task_stop);
    nn_fsm_raise (&self->fsm, &self->event_error, NN_USOCK_SHUTDOWN);
}
