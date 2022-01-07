
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_excl {int * outpipe; int * inpipe; int * pipe; } ;



void nn_excl_init (struct nn_excl *self)
{
    self->pipe = ((void*)0);
    self->inpipe = ((void*)0);
    self->outpipe = ((void*)0);
}
