
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_atomic {int sync; } ;


 int nn_mutex_term (int *) ;

void nn_atomic_term (struct nn_atomic *self)
{
    nn_mutex_term (&self->sync);
}
