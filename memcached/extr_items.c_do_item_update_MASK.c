#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int it_flags; scalar_t__ time; int /*<<< orphan*/  slabs_clsid; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  nkey; } ;
typedef  TYPE_1__ item ;
struct TYPE_11__ {scalar_t__ lru_segmented; } ;

/* Variables and functions */
 scalar_t__ COLD_LRU ; 
 int ITEM_ACTIVE ; 
 int ITEM_LINKED ; 
 int ITEM_SLABBED ; 
 scalar_t__ ITEM_UPDATE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARM_LRU ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_2__ settings ; 

void FUNC8(item *it) {
    FUNC3(FUNC1(it), it->nkey, it->nbytes);

    /* Hits to COLD_LRU immediately move to WARM. */
    if (settings.lru_segmented) {
        FUNC4((it->it_flags & ITEM_SLABBED) == 0);
        if ((it->it_flags & ITEM_LINKED) != 0) {
            if (FUNC2(it) == COLD_LRU && (it->it_flags & ITEM_ACTIVE)) {
                it->time = current_time;
                FUNC7(it);
                it->slabs_clsid = FUNC0(it);
                it->slabs_clsid |= WARM_LRU;
                it->it_flags &= ~ITEM_ACTIVE;
                FUNC6(it);
            } else {
                it->time = current_time;
            }
        }
    } else if (it->time < current_time - ITEM_UPDATE_INTERVAL) {
        FUNC4((it->it_flags & ITEM_SLABBED) == 0);

        if ((it->it_flags & ITEM_LINKED) != 0) {
            it->time = current_time;
            FUNC7(it);
            FUNC5(it);
        }
    }
}