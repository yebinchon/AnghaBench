
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipebase {int out; int fsm; int state; int sock; int outstate; int instate; } ;
struct nn_pipe {int dummy; } ;


 int NN_PIPEBASE_INSTATE_ASYNC ;
 int NN_PIPEBASE_OUTSTATE_IDLE ;
 int NN_PIPEBASE_STATE_ACTIVE ;
 int NN_PIPEBASE_STATE_FAILED ;
 int NN_PIPEBASE_STATE_IDLE ;
 int NN_PIPE_OUT ;
 int nn_assert_state (struct nn_pipebase*,int ) ;
 int nn_fsm_raise (int *,int *,int ) ;
 scalar_t__ nn_slow (int) ;
 int nn_sock_add (int ,struct nn_pipe*) ;

int nn_pipebase_start (struct nn_pipebase *self)
{
    int rc;

    nn_assert_state (self, NN_PIPEBASE_STATE_IDLE);

    self->state = NN_PIPEBASE_STATE_ACTIVE;
    self->instate = NN_PIPEBASE_INSTATE_ASYNC;
    self->outstate = NN_PIPEBASE_OUTSTATE_IDLE;
    rc = nn_sock_add (self->sock, (struct nn_pipe*) self);
    if (nn_slow (rc < 0)) {
        self->state = NN_PIPEBASE_STATE_FAILED;
        return rc;
    }
    nn_fsm_raise (&self->fsm, &self->out, NN_PIPE_OUT);

    return 0;
}
