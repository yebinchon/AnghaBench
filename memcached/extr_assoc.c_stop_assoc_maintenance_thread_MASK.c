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
 scalar_t__ do_run_maintenance_thread ; 
 int /*<<< orphan*/  maintenance_cond ; 
 int /*<<< orphan*/  maintenance_lock ; 
 int /*<<< orphan*/  maintenance_tid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4() {
    FUNC0(&maintenance_lock);
    do_run_maintenance_thread = 0;
    FUNC2(&maintenance_cond);
    FUNC1(&maintenance_lock);

    /* Wait for the maintenance thread to stop */
    FUNC3(maintenance_tid, NULL);
}