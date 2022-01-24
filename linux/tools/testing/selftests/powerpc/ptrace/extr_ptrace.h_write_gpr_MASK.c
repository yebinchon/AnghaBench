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
struct pt_regs {unsigned long* gpr; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_GETREGS ; 
 int /*<<< orphan*/  PTRACE_SETREGS ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pt_regs*) ; 

int FUNC3(pid_t child, unsigned long val)
{
	struct pt_regs *regs;
	int i, ret;

	regs = (struct pt_regs *) FUNC0(sizeof(struct pt_regs));
	if (!regs) {
		FUNC1("malloc() failed");
		return TEST_FAIL;
	}

	ret = FUNC2(PTRACE_GETREGS, child, NULL, regs);
	if (ret) {
		FUNC1("ptrace(PTRACE_GETREGSET) failed");
		return TEST_FAIL;
	}

	for (i = 14; i < 32; i++)
		regs->gpr[i] = val;

	ret = FUNC2(PTRACE_SETREGS, child, NULL, regs);
	if (ret) {
		FUNC1("ptrace(PTRACE_GETREGSET) failed");
		return TEST_FAIL;
	}
	return TEST_PASS;
}