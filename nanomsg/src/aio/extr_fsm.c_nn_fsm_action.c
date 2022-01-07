
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {int dummy; } ;


 int NN_FSM_ACTION ;
 int nn_assert (int) ;
 int nn_fsm_feed (struct nn_fsm*,int ,int,int *) ;

void nn_fsm_action (struct nn_fsm *self, int type)
{
    nn_assert (type > 0);
    nn_fsm_feed (self, NN_FSM_ACTION, type, ((void*)0));
}
