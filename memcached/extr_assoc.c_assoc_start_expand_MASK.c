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
typedef  int uint64_t ;

/* Variables and functions */
 scalar_t__ HASHPOWER_MAX ; 
 scalar_t__ hashpower ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  maintenance_cond ; 
 int /*<<< orphan*/  maintenance_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(uint64_t curr_items) {
    if (FUNC2(&maintenance_lock) == 0) {
        if (curr_items > (FUNC0(hashpower) * 3) / 2 && hashpower < HASHPOWER_MAX) {
            FUNC1(&maintenance_cond);
        }
        FUNC3(&maintenance_lock);
    }
}