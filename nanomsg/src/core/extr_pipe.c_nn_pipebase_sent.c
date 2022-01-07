
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipebase {scalar_t__ outstate; int out; int fsm; } ;


 scalar_t__ NN_PIPEBASE_OUTSTATE_ASYNC ;
 scalar_t__ NN_PIPEBASE_OUTSTATE_IDLE ;
 scalar_t__ NN_PIPEBASE_OUTSTATE_SENDING ;
 scalar_t__ NN_PIPEBASE_OUTSTATE_SENT ;
 int NN_PIPE_OUT ;
 int nn_assert (int) ;
 scalar_t__ nn_fast (int) ;
 int nn_fsm_raise (int *,int *,int ) ;

void nn_pipebase_sent (struct nn_pipebase *self)
{
    if (nn_fast (self->outstate == NN_PIPEBASE_OUTSTATE_SENDING)) {
        self->outstate = NN_PIPEBASE_OUTSTATE_SENT;
        return;
    }
    nn_assert (self->outstate == NN_PIPEBASE_OUTSTATE_ASYNC);
    self->outstate = NN_PIPEBASE_OUTSTATE_IDLE;
    nn_fsm_raise (&self->fsm, &self->out, NN_PIPE_OUT);
}
