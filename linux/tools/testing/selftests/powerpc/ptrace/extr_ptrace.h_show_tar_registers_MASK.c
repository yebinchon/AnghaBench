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
typedef  int /*<<< orphan*/  u64 ;
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  NT_PPC_DSCR ; 
 int /*<<< orphan*/  NT_PPC_PPR ; 
 int /*<<< orphan*/  NT_PPC_TAR ; 
 int /*<<< orphan*/  PTRACE_GETREGSET ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 unsigned long* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iovec*) ; 

int FUNC4(pid_t child, unsigned long *out)
{
	struct iovec iov;
	unsigned long *reg;
	int ret;

	reg = FUNC1(sizeof(unsigned long));
	if (!reg) {
		FUNC2("malloc() failed");
		return TEST_FAIL;
	}
	iov.iov_base = (u64 *) reg;
	iov.iov_len = sizeof(unsigned long);

	ret = FUNC3(PTRACE_GETREGSET, child, NT_PPC_TAR, &iov);
	if (ret) {
		FUNC2("ptrace(PTRACE_GETREGSET) failed");
		goto fail;
	}
	if (out)
		out[0] = *reg;

	ret = FUNC3(PTRACE_GETREGSET, child, NT_PPC_PPR, &iov);
	if (ret) {
		FUNC2("ptrace(PTRACE_GETREGSET) failed");
		goto fail;
	}
	if (out)
		out[1] = *reg;

	ret = FUNC3(PTRACE_GETREGSET, child, NT_PPC_DSCR, &iov);
	if (ret) {
		FUNC2("ptrace(PTRACE_GETREGSET) failed");
		goto fail;
	}
	if (out)
		out[2] = *reg;

	FUNC0(reg);
	return TEST_PASS;
fail:
	FUNC0(reg);
	return TEST_FAIL;
}