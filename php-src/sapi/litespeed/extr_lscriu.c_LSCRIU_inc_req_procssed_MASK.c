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
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ s_initial_start_reqs ; 
 scalar_t__ s_requests_count ; 

void FUNC6()
{
    if (!FUNC1()) {
        ++s_requests_count;
    }

    FUNC5("LSCRIU (%d): s_requests_count %d counter %d\n", FUNC3(),
               s_requests_count, s_initial_start_reqs);

    if (s_initial_start_reqs > 0 && s_requests_count <= s_initial_start_reqs) {
        if (FUNC1() == CRIU_GCOUNTER_SHM) {
            FUNC2();
            if (s_requests_count >= s_initial_start_reqs) {
                //Maybe this time we can stop to send signal and wait for
                //1 second of select timeout
                //kill( LSCRIU_Get_ppid(), SIGUSR2 );
                FUNC5("LSCRIU (%d): Time to dump main process with semaphore\n",
                           FUNC3());
            }
        } else {
            FUNC4(FUNC0(), SIGUSR2);
            FUNC5("LSCRIU (%d): Send kill to main process with signals\n",
                       FUNC3());
        }
    }
}