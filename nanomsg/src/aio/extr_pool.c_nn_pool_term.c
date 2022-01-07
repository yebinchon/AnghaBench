
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pool {int worker; } ;


 int nn_worker_term (int *) ;

void nn_pool_term (struct nn_pool *self)
{
    nn_worker_term (&self->worker);
}
