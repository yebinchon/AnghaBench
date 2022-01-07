
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_dist_data {int item; } ;
struct nn_dist {int pipes; int count; } ;


 int nn_list_end (int *) ;
 int nn_list_insert (int *,int *,int ) ;

void nn_dist_out (struct nn_dist *self, struct nn_dist_data *data)
{
    ++self->count;
    nn_list_insert (&self->pipes, &data->item, nn_list_end (&self->pipes));
}
