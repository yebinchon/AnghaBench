
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_dns {int fsm; int done; } ;


 int NN_DNS_STATE_IDLE ;
 int nn_assert_state (struct nn_dns*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;

void nn_dns_term (struct nn_dns *self)
{
    nn_assert_state (self, NN_DNS_STATE_IDLE);

    nn_fsm_event_term (&self->done);
    nn_fsm_term (&self->fsm);
}
