
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipe {int dummy; } ;
struct nn_excl {struct nn_pipe* inpipe; struct nn_pipe* pipe; } ;


 int nn_assert (int) ;

void nn_excl_in (struct nn_excl *self, struct nn_pipe *pipe)
{
    nn_assert (!self->inpipe);
    nn_assert (pipe == self->pipe);
    self->inpipe = pipe;
}
