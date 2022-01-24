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
struct ppc_debug_info {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  BP_RW ; 
 int /*<<< orphan*/  BP_W ; 
 int PPC_DEBUG_FEATURE_DATA_BP_RANGE ; 
 int /*<<< orphan*/  PPC_PTRACE_GETHWDBGINFO ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 scalar_t__ SIGTRAP ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  child_pid ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,struct ppc_debug_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ppc_debug_info*) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 

__attribute__((used)) static int FUNC9(bool dawr)
{
	char buf[1024];
	int len, i, status;

	struct ppc_debug_info dbginfo;

	i = FUNC7(PPC_PTRACE_GETHWDBGINFO, child_pid, NULL, &dbginfo);
	if (i) {
		FUNC5("Can't set breakpoint info\n");
		FUNC3(-1);
	}
	if (!(dbginfo.features & PPC_DEBUG_FEATURE_DATA_BP_RANGE))
		FUNC6("WARNING: Kernel doesn't support PPC_PTRACE_SETHWDEBUG\n");

	/* Write watchpoint */
	for (len = 1; len <= sizeof(long); len <<= 1)
		FUNC4(buf, BP_W, len, &dbginfo, dawr);

	/* Read-Write watchpoint */
	for (len = 1; len <= sizeof(long); len <<= 1)
		FUNC4(buf, BP_RW, len, &dbginfo, dawr);

	FUNC7(PTRACE_CONT, child_pid, NULL, 0);

	/*
	 * Now we have unregistered the breakpoint, access by child
	 * should not cause SIGTRAP.
	 */

	FUNC8(&status);

	if (FUNC1(status) && FUNC2(status) == SIGTRAP) {
		FUNC6("FAIL: Child process hit the breakpoint, which is not expected\n");
		FUNC7(PTRACE_CONT, child_pid, NULL, 0);
		return TEST_FAIL;
	}

	if (FUNC0(status))
		FUNC6("Child exited normally\n");

	return TEST_PASS;
}