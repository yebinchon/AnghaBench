
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char** slab_list; unsigned int size; int sl_curr; TYPE_2__* slots; int slabs; } ;
typedef TYPE_1__ slabclass_t ;
struct TYPE_6__ {scalar_t__ it_flags; struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_2__ item ;


 scalar_t__ ITEM_SLABBED ;
 int ITEM_clsid (TYPE_2__*) ;
 int grow_slab_list (int) ;
 TYPE_1__* slabclass ;

unsigned int slabs_fixup(char *chunk, const int border) {
    slabclass_t *p;
    item *it = (item *)chunk;
    int id = ITEM_clsid(it);



    if (id == 0) {

        p = &slabclass[0];
        grow_slab_list(0);
        p->slab_list[p->slabs++] = (char*)chunk;
        return -1;
    }
    p = &slabclass[id];


    if (border == 0) {
        grow_slab_list(id);
        p->slab_list[p->slabs++] = chunk;
    }


    if (it->it_flags == ITEM_SLABBED) {


        it->prev = 0;
        it->next = p->slots;
        if (it->next) it->next->prev = it;
        p->slots = it;

        p->sl_curr++;

    }

    return p->size;
}
