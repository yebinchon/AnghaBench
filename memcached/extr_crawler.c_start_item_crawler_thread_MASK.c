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
struct TYPE_2__ {scalar_t__ lru_crawler; } ;

/* Variables and functions */
 int do_run_lru_crawler_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  item_crawler_thread ; 
 int /*<<< orphan*/  item_crawler_tid ; 
 int /*<<< orphan*/  lru_crawler_cond ; 
 int /*<<< orphan*/  lru_crawler_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ settings ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int) ; 

int FUNC6(void) {
    int ret;

    if (settings.lru_crawler)
        return -1;
    FUNC3(&lru_crawler_lock);
    do_run_lru_crawler_thread = 1;
    if ((ret = FUNC2(&item_crawler_tid, NULL,
        item_crawler_thread, NULL)) != 0) {
        FUNC0(stderr, "Can't create LRU crawler thread: %s\n",
            FUNC5(ret));
        FUNC4(&lru_crawler_lock);
        return -1;
    }
    /* Avoid returning until the crawler has actually started */
    FUNC1(&lru_crawler_cond, &lru_crawler_lock);
    FUNC4(&lru_crawler_lock);

    return 0;
}