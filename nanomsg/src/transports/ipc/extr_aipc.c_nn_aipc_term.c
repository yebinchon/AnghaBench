
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_aipc {int fsm; int usock; int sipc; int accepted; int done; int item; } ;


 int NN_AIPC_STATE_IDLE ;
 int nn_assert_state (struct nn_aipc*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_list_item_term (int *) ;
 int nn_sipc_term (int *) ;
 int nn_usock_term (int *) ;

void nn_aipc_term (struct nn_aipc *self)
{
    nn_assert_state (self, NN_AIPC_STATE_IDLE);

    nn_list_item_term (&self->item);
    nn_fsm_event_term (&self->done);
    nn_fsm_event_term (&self->accepted);
    nn_sipc_term (&self->sipc);
    nn_usock_term (&self->usock);
    nn_fsm_term (&self->fsm);
}
