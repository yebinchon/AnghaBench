
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list_item {scalar_t__ prev; } ;
struct nn_list {struct nn_list_item* last; } ;


 scalar_t__ NN_LIST_NOTINLIST ;
 int nn_assert (int) ;

struct nn_list_item *nn_list_prev (struct nn_list *self,
    struct nn_list_item *it)
{
    if (!it)
        return self->last;
    nn_assert (it->prev != NN_LIST_NOTINLIST);
    return it->prev;
}
