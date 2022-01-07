
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sipc {int fsm; int streamhdr; int pipebase; int inmsg; int outmsg; int done; } ;


 int NN_SIPC_STATE_IDLE ;
 int nn_assert_state (struct nn_sipc*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_msg_term (int *) ;
 int nn_pipebase_term (int *) ;
 int nn_streamhdr_term (int *) ;

void nn_sipc_term (struct nn_sipc *self)
{
    nn_assert_state (self, NN_SIPC_STATE_IDLE);

    nn_fsm_event_term (&self->done);
    nn_msg_term (&self->outmsg);
    nn_msg_term (&self->inmsg);
    nn_pipebase_term (&self->pipebase);
    nn_streamhdr_term (&self->streamhdr);
    nn_fsm_term (&self->fsm);
}
