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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stats_sizes_hist ; 
 int /*<<< orphan*/  stats_sizes_lock ; 

bool FUNC2(void) {
    bool ret = false;
    FUNC0(&stats_sizes_lock);
    if (stats_sizes_hist != NULL)
        ret = true;
    FUNC1(&stats_sizes_lock);
    return ret;
}