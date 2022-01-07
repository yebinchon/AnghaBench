
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {int state; int (* fn ) (struct nn_fsm*,int ,int ,int *) ;} ;


 int NN_FSM_ACTION ;
 int NN_FSM_START ;
 int NN_FSM_STATE_ACTIVE ;
 int nn_assert (int ) ;
 int nn_fsm_isidle (struct nn_fsm*) ;
 int stub1 (struct nn_fsm*,int ,int ,int *) ;

void nn_fsm_start (struct nn_fsm *self)
{
    nn_assert (nn_fsm_isidle (self));
    self->fn (self, NN_FSM_ACTION, NN_FSM_START, ((void*)0));
    self->state = NN_FSM_STATE_ACTIVE;
}
