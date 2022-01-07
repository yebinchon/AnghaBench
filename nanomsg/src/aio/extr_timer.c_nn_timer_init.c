
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_timer {int timeout; int fsm; int worker; int done; int wtimer; int stop_task; int start_task; int state; } ;
struct nn_fsm {int dummy; } ;


 int NN_TIMER_SRC_START_TASK ;
 int NN_TIMER_SRC_STOP_TASK ;
 int NN_TIMER_STATE_IDLE ;
 int nn_fsm_choose_worker (int *) ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_timer*,struct nn_fsm*) ;
 int nn_timer_handler ;
 int nn_timer_shutdown ;
 int nn_worker_task_init (int *,int ,int *) ;
 int nn_worker_timer_init (int *,int *) ;

void nn_timer_init (struct nn_timer *self, int src, struct nn_fsm *owner)
{
    nn_fsm_init (&self->fsm, nn_timer_handler, nn_timer_shutdown,
        src, self, owner);
    self->state = NN_TIMER_STATE_IDLE;
    nn_worker_task_init (&self->start_task, NN_TIMER_SRC_START_TASK,
        &self->fsm);
    nn_worker_task_init (&self->stop_task, NN_TIMER_SRC_STOP_TASK, &self->fsm);
    nn_worker_timer_init (&self->wtimer, &self->fsm);
    nn_fsm_event_init (&self->done);
    self->worker = nn_fsm_choose_worker (&self->fsm);
    self->timeout = -1;
}
