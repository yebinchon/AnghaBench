
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list_item {scalar_t__ prev; } ;


 scalar_t__ NN_LIST_NOTINLIST ;

int nn_list_item_isinlist (struct nn_list_item *self)
{
    return self->prev == NN_LIST_NOTINLIST ? 0 : 1;
}
