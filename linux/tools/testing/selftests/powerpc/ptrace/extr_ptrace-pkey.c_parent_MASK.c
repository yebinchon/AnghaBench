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
struct shared_info {unsigned long amr1; unsigned long amr2; unsigned long amr3; unsigned long expected_iamr; unsigned long new_iamr; unsigned long expected_uamor; unsigned long new_uamor; int /*<<< orphan*/  child_sync; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  NT_PPC_PKEY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,unsigned long*,int) ; 
 char* ptrace_read_running ; 
 int FUNC7 (int,int /*<<< orphan*/ ,unsigned long*,int) ; 
 char* ptrace_write_running ; 
 int FUNC8 (int*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct shared_info *info, pid_t pid)
{
	unsigned long regs[3];
	int ret, status;

	/*
	 * Get the initial values for AMR, IAMR and UAMOR and communicate them
	 * to the child.
	 */
	ret = FUNC6(pid, NT_PPC_PKEY, regs, 3);
	FUNC1(ret, &info->child_sync);
	FUNC0(ret, &info->child_sync);

	info->amr1 = info->amr2 = info->amr3 = regs[0];
	info->expected_iamr = info->new_iamr = regs[1];
	info->expected_uamor = info->new_uamor = regs[2];

	/* Wake up child so that it can set itself up. */
	ret = FUNC5(&info->child_sync);
	FUNC0(ret, &info->child_sync);

	ret = FUNC9(&info->child_sync);
	if (ret)
		return ret;

	/* Verify that we can read the pkey registers from the child. */
	ret = FUNC6(pid, NT_PPC_PKEY, regs, 3);
	FUNC0(ret, &info->child_sync);

	FUNC4("%-30s AMR: %016lx IAMR: %016lx UAMOR: %016lx\n",
	       ptrace_read_running, regs[0], regs[1], regs[2]);

	FUNC0(regs[0] != info->amr1, &info->child_sync);
	FUNC0(regs[1] != info->expected_iamr, &info->child_sync);
	FUNC0(regs[2] != info->expected_uamor, &info->child_sync);

	/* Write valid AMR value in child. */
	ret = FUNC7(pid, NT_PPC_PKEY, &info->amr2, 1);
	FUNC0(ret, &info->child_sync);

	FUNC4("%-30s AMR: %016lx\n", ptrace_write_running, info->amr2);

	/* Wake up child so that it can verify it changed. */
	ret = FUNC5(&info->child_sync);
	FUNC0(ret, &info->child_sync);

	ret = FUNC9(&info->child_sync);
	if (ret)
		return ret;

	/* Write invalid AMR value in child. */
	ret = FUNC7(pid, NT_PPC_PKEY, &info->amr3, 1);
	FUNC0(ret, &info->child_sync);

	FUNC4("%-30s AMR: %016lx\n", ptrace_write_running, info->amr3);

	/* Wake up child so that it can verify it didn't change. */
	ret = FUNC5(&info->child_sync);
	FUNC0(ret, &info->child_sync);

	ret = FUNC9(&info->child_sync);
	if (ret)
		return ret;

	/* Try to write to IAMR. */
	regs[0] = info->amr1;
	regs[1] = info->new_iamr;
	ret = FUNC7(pid, NT_PPC_PKEY, regs, 2);
	FUNC0(!ret, &info->child_sync);

	FUNC4("%-30s AMR: %016lx IAMR: %016lx\n",
	       ptrace_write_running, regs[0], regs[1]);

	/* Try to write to IAMR and UAMOR. */
	regs[2] = info->new_uamor;
	ret = FUNC7(pid, NT_PPC_PKEY, regs, 3);
	FUNC0(!ret, &info->child_sync);

	FUNC4("%-30s AMR: %016lx IAMR: %016lx UAMOR: %016lx\n",
	       ptrace_write_running, regs[0], regs[1], regs[2]);

	/* Verify that all registers still have their expected values. */
	ret = FUNC6(pid, NT_PPC_PKEY, regs, 3);
	FUNC0(ret, &info->child_sync);

	FUNC4("%-30s AMR: %016lx IAMR: %016lx UAMOR: %016lx\n",
	       ptrace_read_running, regs[0], regs[1], regs[2]);

	FUNC0(regs[0] != info->amr2, &info->child_sync);
	FUNC0(regs[1] != info->expected_iamr, &info->child_sync);
	FUNC0(regs[2] != info->expected_uamor, &info->child_sync);

	/* Wake up child so that it can verify AMR didn't change and wrap up. */
	ret = FUNC5(&info->child_sync);
	FUNC0(ret, &info->child_sync);

	ret = FUNC8(&status);
	if (ret != pid) {
		FUNC4("Child's exit status not captured\n");
		ret = TEST_PASS;
	} else if (!FUNC3(status)) {
		FUNC4("Child exited abnormally\n");
		ret = TEST_FAIL;
	} else
		ret = FUNC2(status) ? TEST_FAIL : TEST_PASS;

	return ret;
}