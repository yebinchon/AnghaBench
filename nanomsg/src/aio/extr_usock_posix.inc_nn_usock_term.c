
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ batch; } ;
struct nn_usock {int fsm; int wfd; int task_connecting; int task_connected; int task_accept; int task_send; int task_recv; int task_stop; int worker; int event_established; int event_sent; int event_received; int event_error; TYPE_1__ in; } ;


 int NN_USOCK_STATE_IDLE ;
 int nn_assert_state (struct nn_usock*,int ) ;
 int nn_free (scalar_t__) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_worker_cancel (int ,int *) ;
 int nn_worker_fd_term (int *) ;
 int nn_worker_task_term (int *) ;

void nn_usock_term (struct nn_usock *self)
{
    nn_assert_state (self, NN_USOCK_STATE_IDLE);

    if (self->in.batch)
        nn_free (self->in.batch);

    nn_fsm_event_term (&self->event_error);
    nn_fsm_event_term (&self->event_received);
    nn_fsm_event_term (&self->event_sent);
    nn_fsm_event_term (&self->event_established);

    nn_worker_cancel (self->worker, &self->task_stop);
    nn_worker_cancel (self->worker, &self->task_recv);
    nn_worker_cancel (self->worker, &self->task_send);
    nn_worker_cancel (self->worker, &self->task_accept);
    nn_worker_cancel (self->worker, &self->task_connected);
    nn_worker_cancel (self->worker, &self->task_connecting);

    nn_worker_task_term (&self->task_stop);
    nn_worker_task_term (&self->task_recv);
    nn_worker_task_term (&self->task_send);
    nn_worker_task_term (&self->task_accept);
    nn_worker_task_term (&self->task_connected);
    nn_worker_task_term (&self->task_connecting);
    nn_worker_fd_term (&self->wfd);

    nn_fsm_term (&self->fsm);
}
