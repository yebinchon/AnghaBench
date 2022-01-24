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
struct ptrace_peeksiginfo_args {int /*<<< orphan*/  flags; scalar_t__ off; int /*<<< orphan*/  nr; } ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ EFAULT ; 
 scalar_t__ EINVAL ; 
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int MAP_FIXED ; 
 int MAP_PRIVATE ; 
 int PAGE_SIZE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  PTRACE_PEEKSIGINFO ; 
 int /*<<< orphan*/  SIGNR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ errno ; 
 void* FUNC1 (void*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ptrace_peeksiginfo_args*,void*) ; 

__attribute__((used)) static int FUNC4(pid_t child)
{
	struct ptrace_peeksiginfo_args arg;
	int ret, exit_code = -1;
	void *addr_rw, *addr_ro;

	/*
	 * Allocate two contiguous pages. The first one is for read-write,
	 * another is for read-only.
	 */
	addr_rw = FUNC1(NULL, 2 * PAGE_SIZE, PROT_READ | PROT_WRITE,
				MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
	if (addr_rw == MAP_FAILED) {
		FUNC0("mmap() failed: %m\n");
		return 1;
	}

	addr_ro = FUNC1(addr_rw + PAGE_SIZE, PAGE_SIZE, PROT_READ,
			MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
	if (addr_ro == MAP_FAILED) {
		FUNC0("mmap() failed: %m\n");
		goto out;
	}

	arg.nr = SIGNR;
	arg.off = 0;

	/* Unsupported flags */
	arg.flags = ~0;
	ret = FUNC3(PTRACE_PEEKSIGINFO, child, &arg, addr_rw);
	if (ret != -1 || errno != EINVAL) {
		FUNC0("sys_ptrace() returns %d (expected -1),"
				" errno %d (expected %d): %m\n",
				ret, errno, EINVAL);
		goto out;
	}
	arg.flags = 0;

	/* A part of the buffer is read-only */
	ret = FUNC3(PTRACE_PEEKSIGINFO, child, &arg,
					addr_ro - sizeof(siginfo_t) * 2);
	if (ret != 2) {
		FUNC0("sys_ptrace() returns %d (expected 2): %m\n", ret);
		goto out;
	}

	/* Read-only buffer */
	ret = FUNC3(PTRACE_PEEKSIGINFO, child, &arg, addr_ro);
	if (ret != -1 && errno != EFAULT) {
		FUNC0("sys_ptrace() returns %d (expected -1),"
				" errno %d (expected %d): %m\n",
				ret, errno, EFAULT);
		goto out;
	}

	exit_code = 0;
out:
	FUNC2(addr_rw, 2 * PAGE_SIZE);
	return exit_code;
}