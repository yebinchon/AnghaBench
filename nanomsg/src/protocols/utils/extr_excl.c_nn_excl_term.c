
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_excl {int outpipe; int inpipe; int pipe; } ;


 int nn_assert (int) ;

void nn_excl_term (struct nn_excl *self)
{
    nn_assert (!self->pipe);
    nn_assert (!self->inpipe);
    nn_assert (!self->outpipe);
}
