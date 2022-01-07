
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_excl {scalar_t__ inpipe; } ;



int nn_excl_can_recv (struct nn_excl *self)
{
    return self->inpipe ? 1 : 0;
}
