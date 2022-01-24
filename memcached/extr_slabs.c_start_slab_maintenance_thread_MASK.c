#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * slab_start; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_SLAB_BULK_CHECK ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rebalance_tid ; 
 scalar_t__ slab_bulk_check ; 
 TYPE_1__ slab_rebal ; 
 scalar_t__ slab_rebalance_signal ; 
 int /*<<< orphan*/  slab_rebalance_thread ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 

int FUNC5(void) {
    int ret;
    slab_rebalance_signal = 0;
    slab_rebal.slab_start = NULL;
    char *env = FUNC2("MEMCACHED_SLAB_BULK_CHECK");
    if (env != NULL) {
        slab_bulk_check = FUNC0(env);
        if (slab_bulk_check == 0) {
            slab_bulk_check = DEFAULT_SLAB_BULK_CHECK;
        }
    }

    if ((ret = FUNC3(&rebalance_tid, NULL,
                              slab_rebalance_thread, NULL)) != 0) {
        FUNC1(stderr, "Can't create rebal thread: %s\n", FUNC4(ret));
        return -1;
    }
    return 0;
}