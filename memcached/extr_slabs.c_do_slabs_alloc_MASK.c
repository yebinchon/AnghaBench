#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sl_curr; size_t const size; TYPE_1__* slots; } ;
typedef  TYPE_2__ slabclass_t ;
struct TYPE_7__ {int it_flags; int refcount; TYPE_1__* next; } ;
typedef  TYPE_3__ item ;
struct TYPE_5__ {scalar_t__ prev; } ;

/* Variables and functions */
 int ITEM_SLABBED ; 
 int /*<<< orphan*/  FUNC0 (size_t const,unsigned int,size_t const,void*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const,unsigned int) ; 
 unsigned int POWER_SMALLEST ; 
 unsigned int SLABS_ALLOC_NO_NEWPAGE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int power_largest ; 
 TYPE_2__* slabclass ; 

__attribute__((used)) static void *FUNC4(const size_t size, unsigned int id,
        unsigned int flags) {
    slabclass_t *p;
    void *ret = NULL;
    item *it = NULL;

    if (id < POWER_SMALLEST || id > power_largest) {
        FUNC1(size, 0);
        return NULL;
    }
    p = &slabclass[id];
    FUNC2(p->sl_curr == 0 || (((item *)p->slots)->it_flags & ITEM_SLABBED));

    FUNC2(size <= p->size);
    /* fail unless we have space at the end of a recently allocated page,
       we have something on our freelist, or we could allocate a new page */
    if (p->sl_curr == 0 && flags != SLABS_ALLOC_NO_NEWPAGE) {
        FUNC3(id);
    }

    if (p->sl_curr != 0) {
        /* return off our freelist */
        it = (item *)p->slots;
        p->slots = it->next;
        if (it->next) it->next->prev = 0;
        /* Kill flag and initialize refcount here for lock safety in slab
         * mover's freeness detection. */
        it->it_flags &= ~ITEM_SLABBED;
        it->refcount = 1;
        p->sl_curr--;
        ret = (void *)it;
    } else {
        ret = NULL;
    }

    if (ret) {
        FUNC0(size, id, p->size, ret);
    } else {
        FUNC1(size, id);
    }

    return ret;
}