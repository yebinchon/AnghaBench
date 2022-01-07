
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list_item {int dummy; } ;


 int nn_assert (int) ;
 int nn_list_item_isinlist (struct nn_list_item*) ;

void nn_list_item_term (struct nn_list_item *self)
{
    nn_assert (!nn_list_item_isinlist (self));
}
