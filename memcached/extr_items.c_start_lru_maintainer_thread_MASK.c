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
struct TYPE_2__ {int lru_maintainer_thread; } ;

/* Variables and functions */
 int do_run_lru_maintainer_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  lru_maintainer_lock ; 
 int /*<<< orphan*/  lru_maintainer_thread ; 
 int /*<<< orphan*/  lru_maintainer_tid ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ settings ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 

int FUNC5(void *arg) {
    int ret;

    FUNC2(&lru_maintainer_lock);
    do_run_lru_maintainer_thread = 1;
    settings.lru_maintainer_thread = true;
    if ((ret = FUNC1(&lru_maintainer_tid, NULL,
        lru_maintainer_thread, arg)) != 0) {
        FUNC0(stderr, "Can't create LRU maintainer thread: %s\n",
            FUNC4(ret));
        FUNC3(&lru_maintainer_lock);
        return -1;
    }
    FUNC3(&lru_maintainer_lock);

    return 0;
}