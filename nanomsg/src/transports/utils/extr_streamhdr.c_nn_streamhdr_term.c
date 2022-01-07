
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_streamhdr {int fsm; int timer; int done; } ;


 int NN_STREAMHDR_STATE_IDLE ;
 int nn_assert_state (struct nn_streamhdr*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_timer_term (int *) ;

void nn_streamhdr_term (struct nn_streamhdr *self)
{
    nn_assert_state (self, NN_STREAMHDR_STATE_IDLE);

    nn_fsm_event_term (&self->done);
    nn_timer_term (&self->timer);
    nn_fsm_term (&self->fsm);
}
