
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sl_curr; TYPE_3__* slots; } ;
typedef TYPE_2__ slabclass_t ;
struct TYPE_8__ {scalar_t__ it_flags; struct TYPE_8__* next; TYPE_1__* prev; } ;
typedef TYPE_3__ item ;
struct TYPE_6__ {TYPE_3__* next; } ;


 scalar_t__ ITEM_SLABBED ;
 int assert (int) ;

__attribute__((used)) static void slab_rebalance_cut_free(slabclass_t *s_cls, item *it) {

    assert(it->it_flags == ITEM_SLABBED);
    if (s_cls->slots == it) {
        s_cls->slots = it->next;
    }
    if (it->next) it->next->prev = it->prev;
    if (it->prev) it->prev->next = it->next;
    s_cls->sl_curr--;
}
