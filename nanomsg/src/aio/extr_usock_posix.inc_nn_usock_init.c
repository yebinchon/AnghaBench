
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hdr; } ;
struct TYPE_3__ {int * pfd; scalar_t__ batch_pos; scalar_t__ batch_len; int * batch; scalar_t__ len; int * buf; } ;
struct nn_usock {int s; int * asock; int event_error; int event_received; int event_sent; int event_established; int fsm; int task_stop; int task_recv; int task_send; int task_accept; int task_connected; int task_connecting; int wfd; TYPE_2__ out; TYPE_1__ in; scalar_t__ errnum; int worker; int state; } ;
struct nn_fsm {int dummy; } ;
struct msghdr {int dummy; } ;


 int NN_USOCK_SRC_FD ;
 int NN_USOCK_SRC_TASK_ACCEPT ;
 int NN_USOCK_SRC_TASK_CONNECTED ;
 int NN_USOCK_SRC_TASK_CONNECTING ;
 int NN_USOCK_SRC_TASK_RECV ;
 int NN_USOCK_SRC_TASK_SEND ;
 int NN_USOCK_SRC_TASK_STOP ;
 int NN_USOCK_STATE_IDLE ;
 int memset (int *,int ,int) ;
 int nn_fsm_choose_worker (int *) ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_usock*,struct nn_fsm*) ;
 int nn_usock_handler ;
 int nn_usock_shutdown ;
 int nn_worker_fd_init (int *,int ,int *) ;
 int nn_worker_task_init (int *,int ,int *) ;

void nn_usock_init (struct nn_usock *self, int src, struct nn_fsm *owner)
{

    nn_fsm_init (&self->fsm, nn_usock_handler, nn_usock_shutdown,
        src, self, owner);
    self->state = NN_USOCK_STATE_IDLE;


    self->worker = nn_fsm_choose_worker (&self->fsm);


    self->s = -1;
    self->errnum = 0;

    self->in.buf = ((void*)0);
    self->in.len = 0;
    self->in.batch = ((void*)0);
    self->in.batch_len = 0;
    self->in.batch_pos = 0;
    self->in.pfd = ((void*)0);

    memset (&self->out.hdr, 0, sizeof (struct msghdr));


    nn_worker_fd_init (&self->wfd, NN_USOCK_SRC_FD, &self->fsm);
    nn_worker_task_init (&self->task_connecting, NN_USOCK_SRC_TASK_CONNECTING,
        &self->fsm);
    nn_worker_task_init (&self->task_connected, NN_USOCK_SRC_TASK_CONNECTED,
        &self->fsm);
    nn_worker_task_init (&self->task_accept, NN_USOCK_SRC_TASK_ACCEPT,
        &self->fsm);
    nn_worker_task_init (&self->task_send, NN_USOCK_SRC_TASK_SEND, &self->fsm);
    nn_worker_task_init (&self->task_recv, NN_USOCK_SRC_TASK_RECV, &self->fsm);
    nn_worker_task_init (&self->task_stop, NN_USOCK_SRC_TASK_STOP, &self->fsm);


    nn_fsm_event_init (&self->event_established);
    nn_fsm_event_init (&self->event_sent);
    nn_fsm_event_init (&self->event_received);
    nn_fsm_event_init (&self->event_error);


    self->asock = ((void*)0);
}
