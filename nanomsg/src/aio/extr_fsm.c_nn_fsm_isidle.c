
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {scalar_t__ state; int stopped; } ;


 scalar_t__ NN_FSM_STATE_IDLE ;
 int nn_fsm_event_active (int *) ;

int nn_fsm_isidle (struct nn_fsm *self)
{
    return self->state == NN_FSM_STATE_IDLE &&
        !nn_fsm_event_active (&self->stopped) ? 1 : 0;
}
