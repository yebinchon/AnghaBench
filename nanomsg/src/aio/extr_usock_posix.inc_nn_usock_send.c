
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int msg_iovlen; TYPE_1__* msg_iov; } ;
struct TYPE_5__ {TYPE_3__ hdr; TYPE_1__* iov; } ;
struct nn_usock {scalar_t__ state; int task_send; int worker; int fsm; int event_sent; TYPE_2__ out; } ;
struct nn_iovec {scalar_t__ iov_len; int iov_base; } ;
struct TYPE_4__ {scalar_t__ iov_len; int iov_base; } ;


 int EAGAIN ;
 int ECONNRESET ;
 int NN_USOCK_ACTION_ERROR ;
 int NN_USOCK_MAX_IOVCNT ;
 int NN_USOCK_SENT ;
 scalar_t__ NN_USOCK_STATE_ACTIVE ;
 int errnum_assert (int,int) ;
 int nn_assert (int) ;
 scalar_t__ nn_fast (int) ;
 int nn_fsm_action (int *,int ) ;
 int nn_fsm_raise (int *,int *,int ) ;
 scalar_t__ nn_slow (int) ;
 int nn_usock_send_raw (struct nn_usock*,TYPE_3__*) ;
 int nn_worker_execute (int ,int *) ;

void nn_usock_send (struct nn_usock *self, const struct nn_iovec *iov,
    int iovcnt)
{
    int rc;
    int i;
    int out;


    if (self->state != NN_USOCK_STATE_ACTIVE) {
        nn_fsm_action (&self->fsm, NN_USOCK_ACTION_ERROR);
        return;
    }


    nn_assert (iovcnt <= NN_USOCK_MAX_IOVCNT);
    self->out.hdr.msg_iov = self->out.iov;
    out = 0;
    for (i = 0; i != iovcnt; ++i) {
        if (iov [i].iov_len == 0)
            continue;
        self->out.iov [out].iov_base = iov [i].iov_base;
        self->out.iov [out].iov_len = iov [i].iov_len;
        out++;
    }
    self->out.hdr.msg_iovlen = out;


    rc = nn_usock_send_raw (self, &self->out.hdr);


    if (nn_fast (rc == 0)) {
        nn_fsm_raise (&self->fsm, &self->event_sent, NN_USOCK_SENT);
        return;
    }


    if (nn_slow (rc != -EAGAIN)) {
        errnum_assert (rc == -ECONNRESET, -rc);
        nn_fsm_action (&self->fsm, NN_USOCK_ACTION_ERROR);
        return;
    }


    nn_worker_execute (self->worker, &self->task_send);
}
