#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  malloc_fails; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_1__ CQ_ITEM ;

/* Variables and functions */
 int ITEMS_PER_ALLOC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* cqi_freelist ; 
 int /*<<< orphan*/  cqi_freelist_lock ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ stats ; 

__attribute__((used)) static CQ_ITEM *FUNC5(void) {
    CQ_ITEM *item = NULL;
    FUNC3(&cqi_freelist_lock);
    if (cqi_freelist) {
        item = cqi_freelist;
        cqi_freelist = item->next;
    }
    FUNC4(&cqi_freelist_lock);

    if (NULL == item) {
        int i;

        /* Allocate a bunch of items at once to reduce fragmentation */
        item = FUNC2(sizeof(CQ_ITEM) * ITEMS_PER_ALLOC);
        if (NULL == item) {
            FUNC0();
            stats.malloc_fails++;
            FUNC1();
            return NULL;
        }

        /*
         * Link together all the new items except the first one
         * (which we'll return to the caller) for placement on
         * the freelist.
         */
        for (i = 2; i < ITEMS_PER_ALLOC; i++)
            item[i - 1].next = &item[i];

        FUNC3(&cqi_freelist_lock);
        item[ITEMS_PER_ALLOC - 1].next = cqi_freelist;
        cqi_freelist = &item[1];
        FUNC4(&cqi_freelist_lock);
    }

    return item;
}