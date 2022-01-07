
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list_item {struct nn_list_item* prev; struct nn_list_item* next; } ;
struct nn_list {struct nn_list_item* last; struct nn_list_item* first; } ;


 int nn_assert (int) ;
 int nn_list_item_isinlist (struct nn_list_item*) ;

void nn_list_insert (struct nn_list *self, struct nn_list_item *item,
    struct nn_list_item *it)
{
    nn_assert (!nn_list_item_isinlist (item));

    item->prev = it ? it->prev : self->last;
    item->next = it;
    if (item->prev)
        item->prev->next = item;
    if (item->next)
        item->next->prev = item;
    if (!self->first || self->first == it)
        self->first = item;
    if (!it)
        self->last = item;
}
