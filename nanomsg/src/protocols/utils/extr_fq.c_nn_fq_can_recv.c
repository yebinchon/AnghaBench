
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fq {int priolist; } ;


 int nn_priolist_is_active (int *) ;

int nn_fq_can_recv (struct nn_fq *self)
{
    return nn_priolist_is_active (&self->priolist);
}
