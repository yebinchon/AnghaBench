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
struct user_desc {int limit; int seg_32bit; int limit_in_pages; int /*<<< orphan*/  useable; int /*<<< orphan*/  seg_not_present; int /*<<< orphan*/  read_exec_only; int /*<<< orphan*/  contents; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  entry_number; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  desc ;
typedef  int /*<<< orphan*/  cpuset ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  FUTEX_WAKE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SYS_futex ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ errno ; 
 int ftx ; 
 int /*<<< orphan*/  jmpbuf ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,struct user_desc*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigsegv ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  threadproc ; 

__attribute__((used)) static void FUNC11(void)
{
	cpu_set_t cpuset;
	pthread_t thread;
	int failures = 0, iters = 5, i;
	unsigned short orig_ss;

	FUNC1(&cpuset);
	FUNC0(1, &cpuset);
	if (FUNC7(0, sizeof(cpuset), &cpuset) != 0) {
		FUNC3("[SKIP]\tCannot set affinity to CPU 1\n");
		return;
	}

	FUNC1(&cpuset);
	FUNC0(0, &cpuset);
	if (FUNC7(0, sizeof(cpuset), &cpuset) != 0) {
		FUNC3("[SKIP]\tCannot set affinity to CPU 0\n");
		return;
	}

	FUNC8(SIGSEGV, sigsegv, 0);
#ifdef __i386__
	/* True 32-bit kernels send SIGILL instead of SIGSEGV on IRET faults. */
	sethandler(SIGILL, sigsegv, 0);
#endif

	FUNC3("[RUN]\tCross-CPU LDT invalidation\n");

	if (FUNC4(&thread, 0, threadproc, 0) != 0)
		FUNC2(1, "pthread_create");

	asm volatile ("mov %%ss, %0" : "=rm" (orig_ss));

	for (i = 0; i < 5; i++) {
		if (FUNC9(jmpbuf, 1) != 0)
			continue;

		/* Make sure the thread is ready after the last test. */
		while (ftx != 0)
			;

		struct user_desc desc = {
			.entry_number    = 0,
			.base_addr       = 0,
			.limit           = 0xfffff,
			.seg_32bit       = 1,
			.contents        = 0, /* Data */
			.read_exec_only  = 0,
			.limit_in_pages  = 1,
			.seg_not_present = 0,
			.useable         = 0
		};

		if (FUNC6(0x11, &desc, sizeof(desc)) != 0) {
			if (errno != ENOSYS)
				FUNC2(1, "modify_ldt");
			FUNC3("[SKIP]\tmodify_ldt unavailable\n");
			break;
		}

		/* Arm the thread. */
		ftx = 1;
		FUNC10(SYS_futex, &ftx, FUTEX_WAKE, 0, NULL, NULL, 0);

		asm volatile ("mov %0, %%ss" : : "r" (0x7));

		/* Go! */
		ftx = 2;

		while (ftx != 0)
			;

		/*
		 * On success, modify_ldt will segfault us synchronously,
		 * and we'll escape via siglongjmp.
		 */

		failures++;
		asm volatile ("mov %0, %%ss" : : "rm" (orig_ss));
	};

	ftx = 100;  /* Kill the thread. */
	FUNC10(SYS_futex, &ftx, FUTEX_WAKE, 0, NULL, NULL, 0);

	if (FUNC5(thread, NULL) != 0)
		FUNC2(1, "pthread_join");

	if (failures) {
		FUNC3("[FAIL]\t%d of %d iterations failed\n", failures, iters);
		nerrs++;
	} else {
		FUNC3("[OK]\tAll %d iterations succeeded\n", iters);
	}
}