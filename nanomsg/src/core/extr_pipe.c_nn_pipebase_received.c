
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipebase {scalar_t__ instate; int in; int fsm; } ;


 scalar_t__ NN_PIPEBASE_INSTATE_ASYNC ;
 scalar_t__ NN_PIPEBASE_INSTATE_IDLE ;
 scalar_t__ NN_PIPEBASE_INSTATE_RECEIVED ;
 scalar_t__ NN_PIPEBASE_INSTATE_RECEIVING ;
 int NN_PIPE_IN ;
 int nn_assert (int) ;
 scalar_t__ nn_fast (int) ;
 int nn_fsm_raise (int *,int *,int ) ;

void nn_pipebase_received (struct nn_pipebase *self)
{
    if (nn_fast (self->instate == NN_PIPEBASE_INSTATE_RECEIVING)) {
        self->instate = NN_PIPEBASE_INSTATE_RECEIVED;
        return;
    }
    nn_assert (self->instate == NN_PIPEBASE_INSTATE_ASYNC);
    self->instate = NN_PIPEBASE_INSTATE_IDLE;
    nn_fsm_raise (&self->fsm, &self->in, NN_PIPE_IN);
}
