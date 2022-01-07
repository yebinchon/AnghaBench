
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; int * srcptr; int src; TYPE_1__* fsm; } ;
struct TYPE_3__ {TYPE_2__ stopped; int ctx; } ;
struct nn_ep {TYPE_1__ fsm; } ;


 int NN_EP_ACTION_STOPPED ;
 int NN_FSM_ACTION ;
 int nn_ctx_raise (int ,TYPE_2__*) ;

void nn_ep_stopped (struct nn_ep *self)
{

    self->fsm.stopped.fsm = &self->fsm;
    self->fsm.stopped.src = NN_FSM_ACTION;
    self->fsm.stopped.srcptr = ((void*)0);
    self->fsm.stopped.type = NN_EP_ACTION_STOPPED;
    nn_ctx_raise (self->fsm.ctx, &self->fsm.stopped);
}
