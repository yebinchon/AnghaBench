
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {int state; } ;


 int NN_FSM_STATE_IDLE ;
 int NN_FSM_STATE_STOPPING ;
 int nn_assert_state (struct nn_fsm*,int ) ;

void nn_fsm_stopped_noevent (struct nn_fsm *self)
{
    nn_assert_state (self, NN_FSM_STATE_STOPPING);
    self->state = NN_FSM_STATE_IDLE;
}
