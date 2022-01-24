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
 scalar_t__ CRIU_GCOUNTER_SHM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ s_initial_start_reqs ; 
 scalar_t__ s_requests_count ; 

__attribute__((used)) static int FUNC2(void)
{
    if (!s_initial_start_reqs) {
        return 0;
    }

    if (FUNC1() == CRIU_GCOUNTER_SHM
        && s_requests_count <= s_initial_start_reqs) {
        FUNC0();
    }
    if (s_initial_start_reqs > 0
        && s_requests_count >= s_initial_start_reqs) {
        return 1;
    }

    return 0;
}