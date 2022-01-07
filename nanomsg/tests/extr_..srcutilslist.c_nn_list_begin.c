
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list_item {int dummy; } ;
struct nn_list {struct nn_list_item* first; } ;



struct nn_list_item *nn_list_begin (struct nn_list *self)
{
    return self->first;
}
