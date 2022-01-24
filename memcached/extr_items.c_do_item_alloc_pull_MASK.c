#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  item ;
struct TYPE_4__ {int direct_reclaims; } ;
struct TYPE_3__ {scalar_t__ lru_segmented; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLD_LRU ; 
 int /*<<< orphan*/  HOT_LRU ; 
 int /*<<< orphan*/  LRU_PULL_EVICT ; 
 TYPE_2__* itemstats ; 
 int /*<<< orphan*/ * lru_locks ; 
 scalar_t__ FUNC0 (unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ settings ; 
 int /*<<< orphan*/ * FUNC3 (size_t const,unsigned int const,int /*<<< orphan*/ ) ; 

item *FUNC4(const size_t ntotal, const unsigned int id) {
    item *it = NULL;
    int i;
    /* If no memory is available, attempt a direct LRU juggle/eviction */
    /* This is a race in order to simplify lru_pull_tail; in cases where
     * locked items are on the tail, you want them to fall out and cause
     * occasional OOM's, rather than internally work around them.
     * This also gives one fewer code path for slab alloc/free
     */
    for (i = 0; i < 10; i++) {
        /* Try to reclaim memory first */
        if (!settings.lru_segmented) {
            FUNC0(id, COLD_LRU, 0, 0, 0, NULL);
        }
        it = FUNC3(ntotal, id, 0);

        if (it == NULL) {
            // We send '0' in for "total_bytes" as this routine is always
            // pulling to evict, or forcing HOT -> COLD migration.
            // As of this writing, total_bytes isn't at all used with COLD_LRU.
            if (FUNC0(id, COLD_LRU, 0, LRU_PULL_EVICT, 0, NULL) <= 0) {
                if (settings.lru_segmented) {
                    FUNC0(id, HOT_LRU, 0, 0, 0, NULL);
                } else {
                    break;
                }
            }
        } else {
            break;
        }
    }

    if (i > 0) {
        FUNC1(&lru_locks[id]);
        itemstats[id].direct_reclaims += i;
        FUNC2(&lru_locks[id]);
    }

    return it;
}