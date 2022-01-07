
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int* pfd; size_t len; int * buf; } ;
struct nn_usock {scalar_t__ state; int task_recv; int worker; TYPE_1__ in; int event_received; int fsm; } ;


 int ECONNRESET ;
 int NN_USOCK_ACTION_ERROR ;
 int NN_USOCK_RECEIVED ;
 scalar_t__ NN_USOCK_STATE_ACTIVE ;
 int errnum_assert (int,int) ;
 scalar_t__ nn_fast (int) ;
 int nn_fsm_action (int *,int ) ;
 int nn_fsm_raise (int *,int *,int ) ;
 scalar_t__ nn_slow (int) ;
 int nn_usock_recv_raw (struct nn_usock*,void*,size_t*) ;
 int nn_worker_execute (int ,int *) ;

void nn_usock_recv (struct nn_usock *self, void *buf, size_t len, int *fd)
{
    int rc;
    size_t nbytes;


    if (self->state != NN_USOCK_STATE_ACTIVE) {
        nn_fsm_action (&self->fsm, NN_USOCK_ACTION_ERROR);
        return;
    }


    nbytes = len;
    self->in.pfd = fd;
    rc = nn_usock_recv_raw (self, buf, &nbytes);
    if (nn_slow (rc < 0)) {
        errnum_assert (rc == -ECONNRESET, -rc);
        nn_fsm_action (&self->fsm, NN_USOCK_ACTION_ERROR);
        return;
    }


    if (nn_fast (nbytes == len)) {
        nn_fsm_raise (&self->fsm, &self->event_received, NN_USOCK_RECEIVED);
        return;
    }


    self->in.buf = ((uint8_t*) buf) + nbytes;
    self->in.len = len - nbytes;


    nn_worker_execute (self->worker, &self->task_recv);
}
