
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pool {int worker; } ;


 int nn_worker_init (int *) ;

int nn_pool_init (struct nn_pool *self)
{
    return nn_worker_init (&self->worker);
}
