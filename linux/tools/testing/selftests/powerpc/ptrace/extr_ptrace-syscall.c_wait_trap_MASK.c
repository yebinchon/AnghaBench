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
struct TYPE_3__ {scalar_t__ si_pid; scalar_t__ si_code; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ CLD_TRAPPED ; 
 int /*<<< orphan*/  P_PID ; 
 int WEXITED ; 
 int WSTOPPED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3(pid_t chld)
{
	siginfo_t si;

	if (FUNC2(P_PID, chld, &si, WEXITED|WSTOPPED) != 0)
		FUNC0(1, "waitid");
	if (si.si_pid != chld)
		FUNC1(1, "got unexpected pid in event\n");
	if (si.si_code != CLD_TRAPPED)
		FUNC1(1, "got unexpected event type %d\n", si.si_code);
}