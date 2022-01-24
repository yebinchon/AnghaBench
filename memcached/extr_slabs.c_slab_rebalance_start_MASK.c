#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int slabs; int size; int perslab; scalar_t__* slab_list; } ;
typedef  TYPE_1__ slabclass_t ;
struct TYPE_9__ {int verbose; } ;
struct TYPE_8__ {scalar_t__ s_clsid; scalar_t__ d_clsid; char* slab_end; int done; int /*<<< orphan*/ * completed; scalar_t__ slab_start; scalar_t__ slab_pos; } ;
struct TYPE_7__ {int slab_reassign_running; } ;

/* Variables and functions */
 scalar_t__ SLAB_GLOBAL_PAGE_POOL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ power_largest ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_5__ settings ; 
 TYPE_4__ slab_rebal ; 
 int slab_rebalance_signal ; 
 TYPE_1__* slabclass ; 
 int /*<<< orphan*/  slabs_lock ; 
 TYPE_2__ stats_state ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(void) {
    slabclass_t *s_cls;
    int no_go = 0;

    FUNC5(&slabs_lock);

    if (slab_rebal.s_clsid < SLAB_GLOBAL_PAGE_POOL ||
        slab_rebal.s_clsid > power_largest  ||
        slab_rebal.d_clsid < SLAB_GLOBAL_PAGE_POOL ||
        slab_rebal.d_clsid > power_largest  ||
        slab_rebal.s_clsid == slab_rebal.d_clsid)
        no_go = -2;

    s_cls = &slabclass[slab_rebal.s_clsid];

    if (!FUNC4(slab_rebal.d_clsid)) {
        no_go = -1;
    }

    if (s_cls->slabs < 2)
        no_go = -3;

    if (no_go != 0) {
        FUNC6(&slabs_lock);
        return no_go; /* Should use a wrapper function... */
    }

    /* Always kill the first available slab page as it is most likely to
     * contain the oldest items
     */
    slab_rebal.slab_start = s_cls->slab_list[0];
    slab_rebal.slab_end   = (char *)slab_rebal.slab_start +
        (s_cls->size * s_cls->perslab);
    slab_rebal.slab_pos   = slab_rebal.slab_start;
    slab_rebal.done       = 0;
    // Don't need to do chunk move work if page is in global pool.
    if (slab_rebal.s_clsid == SLAB_GLOBAL_PAGE_POOL) {
        slab_rebal.done = 1;
    }

    // Bit-vector to keep track of completed chunks
    slab_rebal.completed = (uint8_t*)FUNC2(s_cls->perslab,sizeof(uint8_t));

    slab_rebalance_signal = 2;

    if (settings.verbose > 1) {
        FUNC3(stderr, "Started a slab rebalance\n");
    }

    FUNC6(&slabs_lock);

    FUNC0();
    stats_state.slab_reassign_running = true;
    FUNC1();

    return 0;
}