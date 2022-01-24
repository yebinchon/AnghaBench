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
struct iovec {int iov_len; struct fpr_regs* iov_base; } ;
struct fpr_regs {unsigned long* fpr; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  NT_PPC_TM_CFPR ; 
 int /*<<< orphan*/  PTRACE_GETREGSET ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iovec*) ; 

int FUNC3(pid_t child, unsigned long *fpr)
{
	struct fpr_regs *regs;
	struct iovec iov;
	int ret, i;

	regs = (struct fpr_regs *) FUNC0(sizeof(struct fpr_regs));
	iov.iov_base = regs;
	iov.iov_len = sizeof(struct fpr_regs);

	ret = FUNC2(PTRACE_GETREGSET, child, NT_PPC_TM_CFPR, &iov);
	if (ret) {
		FUNC1("ptrace(PTRACE_GETREGSET) failed");
		return TEST_FAIL;
	}

	if (fpr) {
		for (i = 0; i < 32; i++)
			fpr[i] = regs->fpr[i];
	}

	return TEST_PASS;
}