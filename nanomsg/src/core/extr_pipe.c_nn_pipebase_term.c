
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipebase {int fsm; int in; int out; } ;


 int NN_PIPEBASE_STATE_IDLE ;
 int nn_assert_state (struct nn_pipebase*,int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;

void nn_pipebase_term (struct nn_pipebase *self)
{
    nn_assert_state (self, NN_PIPEBASE_STATE_IDLE);

    nn_fsm_event_term (&self->out);
    nn_fsm_event_term (&self->in);
    nn_fsm_term (&self->fsm);
}
