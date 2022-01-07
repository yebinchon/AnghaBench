
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ctx {int sync; } ;


 int nn_mutex_lock (int *) ;

void nn_ctx_enter (struct nn_ctx *self)
{
    nn_mutex_lock (&self->sync);
}
