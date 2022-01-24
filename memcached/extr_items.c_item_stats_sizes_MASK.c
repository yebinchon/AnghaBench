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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  (* ADD_STAT ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int stats_sizes_buckets ; 
 scalar_t__* stats_sizes_hist ; 
 int /*<<< orphan*/  stats_sizes_lock ; 

void FUNC4(ADD_STAT add_stats, void *c) {
    FUNC1(&stats_sizes_lock);

    if (stats_sizes_hist != NULL) {
        int i;
        for (i = 0; i < stats_sizes_buckets; i++) {
            if (stats_sizes_hist[i] != 0) {
                char key[12];
                FUNC3(key, sizeof(key), "%d", i * 32);
                FUNC0(key, "%u", stats_sizes_hist[i]);
            }
        }
    } else {
        FUNC0("sizes_status", "disabled", "");
    }

    add_stats(NULL, 0, NULL, 0, c);
    FUNC2(&stats_sizes_lock);
}