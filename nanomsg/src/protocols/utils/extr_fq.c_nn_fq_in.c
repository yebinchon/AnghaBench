
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fq_data {int priodata; } ;
struct nn_fq {int priolist; } ;


 int nn_priolist_activate (int *,int *) ;

void nn_fq_in (struct nn_fq *self, struct nn_fq_data *data)
{
    nn_priolist_activate (&self->priolist, &data->priodata);
}
