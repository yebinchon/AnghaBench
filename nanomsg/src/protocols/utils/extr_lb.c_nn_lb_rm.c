
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_lb_data {int priodata; } ;
struct nn_lb {int priolist; } ;


 int nn_priolist_rm (int *,int *) ;

void nn_lb_rm (struct nn_lb *self, struct nn_lb_data *data)
{
    nn_priolist_rm (&self->priolist, &data->priodata);
}
