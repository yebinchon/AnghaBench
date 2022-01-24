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
typedef  int /*<<< orphan*/  ADD_STAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stats_sizes_hist ; 
 int /*<<< orphan*/  stats_sizes_lock ; 

void FUNC4(ADD_STAT add_stats, void *c) {
    FUNC2(&stats_sizes_lock);
    if (stats_sizes_hist != NULL) {
        FUNC1(stats_sizes_hist);
        stats_sizes_hist = NULL;
    }
    FUNC0("sizes_status", "disabled", "");
    FUNC3(&stats_sizes_lock);
}