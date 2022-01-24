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
struct TYPE_3__ {scalar_t__ si_pid; int si_code; int /*<<< orphan*/  si_status; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  id_t ;

/* Variables and functions */
#define  CLD_CONTINUED 133 
#define  CLD_DUMPED 132 
#define  CLD_EXITED 131 
#define  CLD_KILLED 130 
#define  CLD_STOPPED 129 
#define  CLD_TRAPPED 128 
 int /*<<< orphan*/  D_CHILDS ; 
 scalar_t__ ECHILD ; 
 int /*<<< orphan*/  P_PID ; 
 int WEXITED ; 
 int WNOHANG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3(pid_t pid) {
    siginfo_t i;

    errno = 0;
    FUNC0(D_CHILDS, "SIGNAL: Reaping pid: %d...", pid);
    if (FUNC2(P_PID, (id_t)pid, &i, WEXITED|WNOHANG) == -1) {
        if (errno != ECHILD)
            FUNC1("SIGNAL: Failed to wait for: %d", pid);
        else
            FUNC0(D_CHILDS, "SIGNAL: Already reaped: %d", pid);
        return;
    } else if (i.si_pid == 0) {
        // Process didn't exit, this shouldn't happen.
        return;
    }

    switch (i.si_code) {
    case CLD_EXITED:
        FUNC0(D_CHILDS, "SIGNAL: Child %d exited: %d", pid, i.si_status);
        break;
    case CLD_KILLED:
        FUNC0(D_CHILDS, "SIGNAL: Child %d killed by signal: %d", pid, i.si_status);
        break;
    case CLD_DUMPED:
        FUNC0(D_CHILDS, "SIGNAL: Child %d dumped core by signal: %d", pid, i.si_status);
        break;
    case CLD_STOPPED:
        FUNC0(D_CHILDS, "SIGNAL: Child %d stopped by signal: %d", pid, i.si_status);
        break;
    case CLD_TRAPPED:
        FUNC0(D_CHILDS, "SIGNAL: Child %d trapped by signal: %d", pid, i.si_status);
        break;
    case CLD_CONTINUED:
        FUNC0(D_CHILDS, "SIGNAL: Child %d continued by signal: %d", pid, i.si_status);
        break;
    default:
        FUNC0(D_CHILDS, "SIGNAL: Child %d gave us a SIGCHLD with code %d and status %d.", pid, i.si_code, i.si_status);
    }
}