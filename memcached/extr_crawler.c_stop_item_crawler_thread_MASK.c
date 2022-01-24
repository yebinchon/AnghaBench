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
 scalar_t__ do_run_lru_crawler_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  item_crawler_tid ; 
 int /*<<< orphan*/  lru_crawler_cond ; 
 int /*<<< orphan*/  lru_crawler_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int) ; 

int FUNC6(bool wait) {
    int ret;
    FUNC3(&lru_crawler_lock);
    if (do_run_lru_crawler_thread == 0) {
        FUNC4(&lru_crawler_lock);
        return 0;
    }
    do_run_lru_crawler_thread = 0;
    FUNC1(&lru_crawler_cond);
    FUNC4(&lru_crawler_lock);
    if (wait && (ret = FUNC2(item_crawler_tid, NULL)) != 0) {
        FUNC0(stderr, "Failed to stop LRU crawler thread: %s\n", FUNC5(ret));
        return -1;
    }
    return 0;
}