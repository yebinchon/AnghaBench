
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sl_curr; TYPE_2__* slots; } ;
typedef TYPE_1__ slabclass_t ;
struct TYPE_6__ {int it_flags; unsigned int slabs_clsid; struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_2__ item ;


 int ITEM_CHUNKED ;
 int ITEM_SLABBED ;
 int MEMCACHED_SLABS_FREE (size_t const,unsigned int,void*) ;
 unsigned int POWER_SMALLEST ;
 int assert (int) ;
 int do_slabs_free_chunked (TYPE_2__*,size_t const) ;
 unsigned int power_largest ;
 TYPE_1__* slabclass ;

__attribute__((used)) static void do_slabs_free(void *ptr, const size_t size, unsigned int id) {
    slabclass_t *p;
    item *it;

    assert(id >= POWER_SMALLEST && id <= power_largest);
    if (id < POWER_SMALLEST || id > power_largest)
        return;

    MEMCACHED_SLABS_FREE(size, id, ptr);
    p = &slabclass[id];

    it = (item *)ptr;
    if ((it->it_flags & ITEM_CHUNKED) == 0) {
        it->it_flags = ITEM_SLABBED;
        it->slabs_clsid = id;
        it->prev = 0;
        it->next = p->slots;
        if (it->next) it->next->prev = it;
        p->slots = it;

        p->sl_curr++;
    } else {
        do_slabs_free_chunked(it, size);
    }
    return;
}
