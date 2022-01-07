
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct nn_pipe* sent_to; int timer; int request; } ;
struct TYPE_3__ {int sockbase; } ;
struct nn_req {int state; TYPE_2__ task; int resend_ivl; TYPE_1__ xreq; } ;
struct nn_pipe {int dummy; } ;
struct nn_msg {int dummy; } ;


 int EAGAIN ;
 int NN_REQ_STATE_ACTIVE ;
 int NN_REQ_STATE_DELAYED ;
 int errnum_assert (int ,int) ;
 int nn_assert (int) ;
 scalar_t__ nn_fast (int) ;
 int nn_msg_cp (struct nn_msg*,int *) ;
 int nn_msg_term (struct nn_msg*) ;
 scalar_t__ nn_slow (int) ;
 int nn_timer_start (int *,int ) ;
 int nn_xreq_send_to (int *,struct nn_msg*,struct nn_pipe**) ;

void nn_req_action_send (struct nn_req *self, int allow_delay)
{
    int rc;
    struct nn_msg msg;
    struct nn_pipe *to;


    nn_msg_cp (&msg, &self->task.request);
    rc = nn_xreq_send_to (&self->xreq.sockbase, &msg, &to);



    if (nn_slow (rc == -EAGAIN)) {
        nn_assert (allow_delay == 1);
        nn_msg_term (&msg);
        self->state = NN_REQ_STATE_DELAYED;
        return;
    }




    if (nn_fast (rc == 0)) {
        nn_timer_start (&self->task.timer, self->resend_ivl);
        nn_assert (to);
        self->task.sent_to = to;
        self->state = NN_REQ_STATE_ACTIVE;
        return;
    }


    errnum_assert (0, -rc);
}
