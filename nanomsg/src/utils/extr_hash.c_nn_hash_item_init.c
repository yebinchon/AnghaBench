
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_hash_item {int list; } ;


 int nn_list_item_init (int *) ;

void nn_hash_item_init (struct nn_hash_item *self)
{
    nn_list_item_init (&self->list);
}
