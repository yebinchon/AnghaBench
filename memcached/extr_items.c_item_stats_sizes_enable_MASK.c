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
struct TYPE_2__ {int /*<<< orphan*/  use_cas; } ;
typedef  int /*<<< orphan*/  ADD_STAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ settings ; 
 int /*<<< orphan*/ * stats_sizes_hist ; 
 int /*<<< orphan*/  stats_sizes_lock ; 

void FUNC4(ADD_STAT add_stats, void *c) {
    FUNC2(&stats_sizes_lock);
    if (!settings.use_cas) {
        FUNC0("sizes_status", "error", "");
        FUNC0("sizes_error", "cas_support_disabled", "");
    } else if (stats_sizes_hist == NULL) {
        FUNC1();
        if (stats_sizes_hist != NULL) {
            FUNC0("sizes_status", "enabled", "");
        } else {
            FUNC0("sizes_status", "error", "");
            FUNC0("sizes_error", "no_memory", "");
        }
    } else {
        FUNC0("sizes_status", "enabled", "");
    }
    FUNC3(&stats_sizes_lock);
}