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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  myp_lock ; 
 int myp_tracking ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void) {
    FUNC1("process tracking enabled.");
    myp_tracking = 1;

    if (FUNC2(&myp_lock) != 0) {
	FUNC0("myp_init() mutex init failed.");
    }
}