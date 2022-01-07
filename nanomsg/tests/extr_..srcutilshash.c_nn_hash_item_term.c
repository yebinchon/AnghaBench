
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_hash_item {int list; } ;


 int nn_list_item_term (int *) ;

void nn_hash_item_term (struct nn_hash_item *self)
{
    nn_list_item_term (&self->list);
}
