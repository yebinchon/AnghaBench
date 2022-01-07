
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_dist_data {int item; } ;
struct nn_dist {int pipes; int count; } ;


 int nn_list_erase (int *,int *) ;
 scalar_t__ nn_list_item_isinlist (int *) ;
 int nn_list_item_term (int *) ;

void nn_dist_rm (struct nn_dist *self, struct nn_dist_data *data)
{
    if (nn_list_item_isinlist (&data->item)) {
        --self->count;
        nn_list_erase (&self->pipes, &data->item);
    }
    nn_list_item_term (&data->item);
}
