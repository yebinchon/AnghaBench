
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_timer {int fsm; int start_task; int stop_task; int wtimer; int done; } ;


 int NN_TIMER_STATE_IDLE ;
 int nn_assert_state (struct nn_timer*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_worker_task_term (int *) ;
 int nn_worker_timer_term (int *) ;

void nn_timer_term (struct nn_timer *self)
{
    nn_assert_state (self, NN_TIMER_STATE_IDLE);

    nn_fsm_event_term (&self->done);
    nn_worker_timer_term (&self->wtimer);
    nn_worker_task_term (&self->stop_task);
    nn_worker_task_term (&self->start_task);
    nn_fsm_term (&self->fsm);
}
