
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int request; int reply; int timer; } ;
struct nn_req {int xreq; int fsm; TYPE_1__ task; } ;


 int nn_fsm_term (int *) ;
 int nn_msg_term (int *) ;
 int nn_task_term (TYPE_1__*) ;
 int nn_timer_term (int *) ;
 int nn_xreq_term (int *) ;

void nn_req_term (struct nn_req *self)
{
    nn_timer_term (&self->task.timer);
    nn_task_term (&self->task);
    nn_msg_term (&self->task.reply);
    nn_msg_term (&self->task.request);
    nn_fsm_term (&self->fsm);
    nn_xreq_term (&self->xreq);
}
