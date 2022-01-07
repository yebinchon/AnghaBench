
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_aws {int fsm; int usock; int sws; int accepted; int done; int item; } ;


 int NN_AWS_STATE_IDLE ;
 int nn_assert_state (struct nn_aws*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_list_item_term (int *) ;
 int nn_sws_term (int *) ;
 int nn_usock_term (int *) ;

void nn_aws_term (struct nn_aws *self)
{
    nn_assert_state (self, NN_AWS_STATE_IDLE);

    nn_list_item_term (&self->item);
    nn_fsm_event_term (&self->done);
    nn_fsm_event_term (&self->accepted);
    nn_sws_term (&self->sws);
    nn_usock_term (&self->usock);
    nn_fsm_term (&self->fsm);
}
