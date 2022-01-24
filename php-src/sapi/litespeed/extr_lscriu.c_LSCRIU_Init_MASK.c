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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  LSCRIU_on_timer ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ s_initial_start_reqs ; 
 int /*<<< orphan*/  s_native ; 
 int /*<<< orphan*/  s_pid ; 

int FUNC8(void)
{
    s_pid = FUNC6();
    FUNC1();
    FUNC2();
    if (s_initial_start_reqs && !s_native) {
        if (FUNC5() == -1)
            s_initial_start_reqs = 0;
    }
    if (s_initial_start_reqs) {
        FUNC4();
        FUNC7("LSCRIU (%d): LSAPI_Register_Pgrp_Timer_Callback\n", s_pid);
        FUNC0(LSCRIU_on_timer);
        FUNC3(0);
    }
    return s_initial_start_reqs > 0;
}