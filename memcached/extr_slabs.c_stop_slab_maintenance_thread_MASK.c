#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ do_run_slab_rebalance_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rebalance_tid ; 
 int /*<<< orphan*/  slab_rebalance_cond ; 
 int /*<<< orphan*/  slabs_rebalance_lock ; 

void FUNC4(void) {
    FUNC0(&slabs_rebalance_lock);
    do_run_slab_rebalance_thread = 0;
    FUNC1(&slab_rebalance_cond);
    FUNC3(&slabs_rebalance_lock);

    /* Wait for the maintenance thread to stop */
    FUNC2(rebalance_tid, NULL);
}