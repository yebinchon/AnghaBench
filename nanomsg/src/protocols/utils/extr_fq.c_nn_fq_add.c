
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipe {int dummy; } ;
struct nn_fq_data {int priodata; } ;
struct nn_fq {int priolist; } ;


 int nn_priolist_add (int *,int *,struct nn_pipe*,int) ;

void nn_fq_add (struct nn_fq *self, struct nn_fq_data *data,
    struct nn_pipe *pipe, int priority)
{
    nn_priolist_add (&self->priolist, &data->priodata, pipe, priority);
}
