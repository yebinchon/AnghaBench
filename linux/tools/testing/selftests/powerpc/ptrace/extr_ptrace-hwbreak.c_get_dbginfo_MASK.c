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
 int /*<<< orphan*/  PPC_PTRACE_GETHWDBGINFO ; 
 int /*<<< orphan*/  child_pid ; 
 int /*<<< orphan*/  dbginfo ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	int ret;

	ret = FUNC2(PPC_PTRACE_GETHWDBGINFO, child_pid, NULL, &dbginfo);
	if (ret) {
		FUNC1("Can't get breakpoint info\n");
		FUNC0(-1);
	}
}