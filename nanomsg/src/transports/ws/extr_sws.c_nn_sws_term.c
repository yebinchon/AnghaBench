
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sws {int fsm; int handshaker; int pipebase; int inmsg_array; int outmsg; int done; } ;


 int NN_SWS_STATE_IDLE ;
 int nn_assert_state (struct nn_sws*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_msg_array_term (int *) ;
 int nn_msg_term (int *) ;
 int nn_pipebase_term (int *) ;
 int nn_ws_handshake_term (int *) ;

void nn_sws_term (struct nn_sws *self)
{
    nn_assert_state (self, NN_SWS_STATE_IDLE);

    nn_fsm_event_term (&self->done);
    nn_msg_term (&self->outmsg);
    nn_msg_array_term (&self->inmsg_array);
    nn_pipebase_term (&self->pipebase);
    nn_ws_handshake_term (&self->handshaker);
    nn_fsm_term (&self->fsm);
}
