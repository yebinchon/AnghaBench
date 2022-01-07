
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_atcp {int fsm; int usock; int stcp; int accepted; int done; int item; } ;


 int NN_ATCP_STATE_IDLE ;
 int nn_assert_state (struct nn_atcp*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_list_item_term (int *) ;
 int nn_stcp_term (int *) ;
 int nn_usock_term (int *) ;

void nn_atcp_term (struct nn_atcp *self)
{
    nn_assert_state (self, NN_ATCP_STATE_IDLE);

    nn_list_item_term (&self->item);
    nn_fsm_event_term (&self->done);
    nn_fsm_event_term (&self->accepted);
    nn_stcp_term (&self->stcp);
    nn_usock_term (&self->usock);
    nn_fsm_term (&self->fsm);
}
