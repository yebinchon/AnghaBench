
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipe {int dummy; } ;
struct nn_lb_data {int priodata; } ;
struct nn_lb {int priolist; } ;


 int nn_priolist_add (int *,int *,struct nn_pipe*,int) ;

void nn_lb_add (struct nn_lb *self, struct nn_lb_data *data,
    struct nn_pipe *pipe, int priority)
{
    nn_priolist_add (&self->priolist, &data->priodata, pipe, priority);
}
