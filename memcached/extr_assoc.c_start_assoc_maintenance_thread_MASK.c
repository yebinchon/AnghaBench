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
 scalar_t__ DEFAULT_HASH_BULK_MOVE ; 
 int /*<<< orphan*/  assoc_maintenance_thread ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ hash_bulk_move ; 
 int /*<<< orphan*/  maintenance_tid ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 

int FUNC5() {
    int ret;
    char *env = FUNC2("MEMCACHED_HASH_BULK_MOVE");
    if (env != NULL) {
        hash_bulk_move = FUNC0(env);
        if (hash_bulk_move == 0) {
            hash_bulk_move = DEFAULT_HASH_BULK_MOVE;
        }
    }

    if ((ret = FUNC3(&maintenance_tid, NULL,
                              assoc_maintenance_thread, NULL)) != 0) {
        FUNC1(stderr, "Can't create thread: %s\n", FUNC4(ret));
        return -1;
    }
    return 0;
}