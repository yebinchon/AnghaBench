
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ws_handshake {int fsm; int timer; int done; } ;


 int NN_WS_HANDSHAKE_STATE_IDLE ;
 int nn_assert_state (struct nn_ws_handshake*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_timer_term (int *) ;

void nn_ws_handshake_term (struct nn_ws_handshake *self)
{
    nn_assert_state (self, NN_WS_HANDSHAKE_STATE_IDLE);

    nn_fsm_event_term (&self->done);
    nn_timer_term (&self->timer);
    nn_fsm_term (&self->fsm);
}
