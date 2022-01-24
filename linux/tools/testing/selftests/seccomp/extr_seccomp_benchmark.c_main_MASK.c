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
struct sock_fprog {unsigned short len; struct sock_filter* filter; } ;
struct sock_filter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sock_filter*) ; 
 int BPF_K ; 
 int BPF_RET ; 
 struct sock_filter FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLOCK_PROCESS_CPUTIME_ID ; 
 int /*<<< orphan*/  PR_SET_NO_NEW_PRIVS ; 
 int /*<<< orphan*/  PR_SET_SECCOMP ; 
 int /*<<< orphan*/  SECCOMP_MODE_FILTER ; 
 int /*<<< orphan*/  SECCOMP_RET_ALLOW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long long FUNC3 () ; 
 long FUNC4 (int /*<<< orphan*/ ,int,struct sock_fprog*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 unsigned long long FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC7 (int /*<<< orphan*/ ,unsigned long long) ; 

int FUNC8(int argc, char *argv[])
{
	struct sock_filter filter[] = {
		FUNC1(BPF_RET|BPF_K, SECCOMP_RET_ALLOW),
	};
	struct sock_fprog prog = {
		.len = (unsigned short)FUNC0(filter),
		.filter = filter,
	};
	long ret;
	unsigned long long samples;
	unsigned long long native, filtered;

	if (argc > 1)
		samples = FUNC6(argv[1], NULL, 0);
	else
		samples = FUNC3();

	FUNC5("Benchmarking %llu samples...\n", samples);

	native = FUNC7(CLOCK_PROCESS_CPUTIME_ID, samples) / samples;
	FUNC5("getpid native: %llu ns\n", native);

	ret = FUNC4(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0);
	FUNC2(ret == 0);

	ret = FUNC4(PR_SET_SECCOMP, SECCOMP_MODE_FILTER, &prog);
	FUNC2(ret == 0);

	filtered = FUNC7(CLOCK_PROCESS_CPUTIME_ID, samples) / samples;
	FUNC5("getpid RET_ALLOW: %llu ns\n", filtered);

	FUNC5("Estimated seccomp overhead per syscall: %llu ns\n",
		filtered - native);

	if (filtered == native)
		FUNC5("Trying running again with more samples.\n");

	return 0;
}