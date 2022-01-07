
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {scalar_t__ state; int (* shutdown_fn ) (struct nn_fsm*,int ,int ,int *) ;} ;


 int NN_FSM_ACTION ;
 scalar_t__ NN_FSM_STATE_ACTIVE ;
 scalar_t__ NN_FSM_STATE_STOPPING ;
 int NN_FSM_STOP ;
 int stub1 (struct nn_fsm*,int ,int ,int *) ;

void nn_fsm_stop (struct nn_fsm *self)
{

    if (self->state != NN_FSM_STATE_ACTIVE)
        return;

    self->state = NN_FSM_STATE_STOPPING;
    self->shutdown_fn (self, NN_FSM_ACTION, NN_FSM_STOP, ((void*)0));
}
