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
struct iovec {unsigned long* iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_GETREGSET ; 
 int TEST_PASS ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,struct iovec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(pid_t child, unsigned long type, unsigned long regs[],
		     int n)
{
	struct iovec iov;
	long ret;

	FUNC0(FUNC2(child));

	iov.iov_base = regs;
	iov.iov_len = n * sizeof(unsigned long);

	ret = FUNC1(PTRACE_GETREGSET, child, type, &iov);
	if (ret)
		return ret;

	FUNC0(FUNC3(child));

	return TEST_PASS;
}