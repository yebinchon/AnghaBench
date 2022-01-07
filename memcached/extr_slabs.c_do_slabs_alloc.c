
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sl_curr; size_t const size; TYPE_1__* slots; } ;
typedef TYPE_2__ slabclass_t ;
struct TYPE_7__ {int it_flags; int refcount; TYPE_1__* next; } ;
typedef TYPE_3__ item ;
struct TYPE_5__ {scalar_t__ prev; } ;


 int ITEM_SLABBED ;
 int MEMCACHED_SLABS_ALLOCATE (size_t const,unsigned int,size_t const,void*) ;
 int MEMCACHED_SLABS_ALLOCATE_FAILED (size_t const,unsigned int) ;
 unsigned int POWER_SMALLEST ;
 unsigned int SLABS_ALLOC_NO_NEWPAGE ;
 int assert (int) ;
 int do_slabs_newslab (unsigned int) ;
 unsigned int power_largest ;
 TYPE_2__* slabclass ;

__attribute__((used)) static void *do_slabs_alloc(const size_t size, unsigned int id,
        unsigned int flags) {
    slabclass_t *p;
    void *ret = ((void*)0);
    item *it = ((void*)0);

    if (id < POWER_SMALLEST || id > power_largest) {
        MEMCACHED_SLABS_ALLOCATE_FAILED(size, 0);
        return ((void*)0);
    }
    p = &slabclass[id];
    assert(p->sl_curr == 0 || (((item *)p->slots)->it_flags & ITEM_SLABBED));

    assert(size <= p->size);


    if (p->sl_curr == 0 && flags != SLABS_ALLOC_NO_NEWPAGE) {
        do_slabs_newslab(id);
    }

    if (p->sl_curr != 0) {

        it = (item *)p->slots;
        p->slots = it->next;
        if (it->next) it->next->prev = 0;


        it->it_flags &= ~ITEM_SLABBED;
        it->refcount = 1;
        p->sl_curr--;
        ret = (void *)it;
    } else {
        ret = ((void*)0);
    }

    if (ret) {
        MEMCACHED_SLABS_ALLOCATE(size, id, p->size, ret);
    } else {
        MEMCACHED_SLABS_ALLOCATE_FAILED(size, id);
    }

    return ret;
}
