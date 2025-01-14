
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nn_sockbase_vfptr {int dummy; } ;
struct TYPE_4__ {int timer; int reply; int request; int * sent_to; } ;
struct TYPE_3__ {int sockbase; } ;
struct nn_req {int fsm; int lastid; TYPE_2__ task; int resend_ivl; int state; TYPE_1__ xreq; } ;


 int NN_REQ_DEFAULT_RESEND_IVL ;
 int NN_REQ_SRC_RESEND_TIMER ;
 int NN_REQ_STATE_IDLE ;
 int nn_fsm_init_root (int *,int ,int ,int ) ;
 int nn_fsm_start (int *) ;
 int nn_msg_init (int *,int ) ;
 int nn_random_generate (int *,int) ;
 int nn_req_handler ;
 int nn_req_shutdown ;
 int nn_sockbase_getctx (int *) ;
 int nn_task_init (TYPE_2__*,int ) ;
 int nn_timer_init (int *,int ,int *) ;
 int nn_xreq_init (TYPE_1__*,struct nn_sockbase_vfptr const*,void*) ;

void nn_req_init (struct nn_req *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    nn_xreq_init (&self->xreq, vfptr, hint);
    nn_fsm_init_root (&self->fsm, nn_req_handler, nn_req_shutdown,
        nn_sockbase_getctx (&self->xreq.sockbase));
    self->state = NN_REQ_STATE_IDLE;



    nn_random_generate (&self->lastid, sizeof (self->lastid));

    self->task.sent_to = ((void*)0);

    nn_msg_init (&self->task.request, 0);
    nn_msg_init (&self->task.reply, 0);
    nn_timer_init (&self->task.timer, NN_REQ_SRC_RESEND_TIMER, &self->fsm);
    self->resend_ivl = NN_REQ_DEFAULT_RESEND_IVL;

    nn_task_init (&self->task, self->lastid);


    nn_fsm_start (&self->fsm);
}
