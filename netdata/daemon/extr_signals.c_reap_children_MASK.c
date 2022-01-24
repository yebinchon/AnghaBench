#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ si_pid; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int /*<<< orphan*/  id_t ;

/* Variables and functions */
 scalar_t__ ECHILD ; 
 int /*<<< orphan*/  P_ALL ; 
 int WEXITED ; 
 int WNOHANG ; 
 int WNOWAIT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC5() {
    siginfo_t i;

    while (1 == 1) {
        // Identify which process caused the signal so we can determine
        // if we need to reap a re-parented process.
        i.si_pid = 0;
        if (FUNC4(P_ALL, (id_t)0, &i, WEXITED|WNOHANG|WNOWAIT) == -1) {
            if (errno != ECHILD) // This shouldn't happen with WNOHANG but does.
                FUNC0("SIGNAL: Failed to wait");
            return;
        } else if (i.si_pid == 0) {
            // No child exited.
            return;
        } else if (FUNC1(i.si_pid) == 0) {
            // myp managed, sleep for a short time to avoid busy wait while
            // this is handled by myp.
            FUNC3(10000);
        } else {
            // Unknown process, likely a re-parented child, reap it.
            FUNC2(i.si_pid);
        }
    }
}