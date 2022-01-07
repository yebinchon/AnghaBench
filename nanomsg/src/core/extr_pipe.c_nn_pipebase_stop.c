
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipebase {scalar_t__ state; int sock; } ;
struct nn_pipe {int dummy; } ;


 scalar_t__ NN_PIPEBASE_STATE_ACTIVE ;
 scalar_t__ NN_PIPEBASE_STATE_IDLE ;
 int nn_sock_rm (int ,struct nn_pipe*) ;

void nn_pipebase_stop (struct nn_pipebase *self)
{
    if (self->state == NN_PIPEBASE_STATE_ACTIVE)
        nn_sock_rm (self->sock, (struct nn_pipe*) self);
    self->state = NN_PIPEBASE_STATE_IDLE;
}
