
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {int state; int stopped; } ;


 int NN_FSM_STATE_IDLE ;
 int NN_FSM_STATE_STOPPING ;
 int nn_assert_state (struct nn_fsm*,int ) ;
 int nn_fsm_raise (struct nn_fsm*,int *,int) ;

void nn_fsm_stopped (struct nn_fsm *self, int type)
{
    nn_assert_state (self, NN_FSM_STATE_STOPPING);
    nn_fsm_raise (self, &self->stopped, type);
    self->state = NN_FSM_STATE_IDLE;
}
