
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fq {int priolist; } ;


 int nn_priolist_init (int *) ;

void nn_fq_init (struct nn_fq *self)
{
    nn_priolist_init (&self->priolist);
}
