
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list_item {void* next; void* prev; } ;


 void* NN_LIST_NOTINLIST ;

void nn_list_item_init (struct nn_list_item *self)
{
    self->prev = NN_LIST_NOTINLIST;
    self->next = NN_LIST_NOTINLIST;
}
