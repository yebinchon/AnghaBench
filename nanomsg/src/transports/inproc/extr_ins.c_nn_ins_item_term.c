
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ins_item {int item; } ;


 int nn_list_item_term (int *) ;

void nn_ins_item_term (struct nn_ins_item *self)
{
    nn_list_item_term (&self->item);
}
