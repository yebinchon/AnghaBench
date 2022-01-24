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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  cpuset ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUTEX_WAKE ; 
#define  HARD_ZERO 128 
 int MAP_ANONYMOUS ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SYS_futex ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int ftx ; 
 int have_fsgsbase ; 
 int /*<<< orphan*/  jmpbuf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 scalar_t__ nerrs ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,unsigned short,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shared_scratch ; 
 int /*<<< orphan*/  sigill ; 
 int /*<<< orphan*/  sigsegv ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (unsigned short,int) ; 
 int /*<<< orphan*/  threadproc ; 

int FUNC19()
{
	pthread_t thread;

	shared_scratch = FUNC5(NULL, 4096, PROT_READ | PROT_WRITE,
			      MAP_ANONYMOUS | MAP_SHARED, -1, 0);

	/* Probe FSGSBASE */
	FUNC13(SIGILL, sigill, 0);
	if (FUNC14(jmpbuf, 1) == 0) {
		FUNC10();
		have_fsgsbase = true;
		FUNC7("\tFSGSBASE instructions are enabled\n");
	} else {
		FUNC7("\tFSGSBASE instructions are disabled\n");
	}
	FUNC3(SIGILL);

	FUNC13(SIGSEGV, sigsegv, 0);

	FUNC2(0);
	FUNC2(1);
	FUNC2(0x200000000);
	FUNC2(0);
	FUNC2(0x200000000);
	FUNC2(1);

	for (int sched = 0; sched < 2; sched++) {
		FUNC6(0, !!sched);
		FUNC6(1, !!sched);
		FUNC6(0x200000000, !!sched);
	}

	/* Set up for multithreading. */

	cpu_set_t cpuset;
	FUNC1(&cpuset);
	FUNC0(0, &cpuset);
	if (FUNC11(0, sizeof(cpuset), &cpuset) != 0)
		FUNC4(1, "sched_setaffinity to CPU 0");	/* should never fail */

	if (FUNC8(&thread, 0, threadproc, 0) != 0)
		FUNC4(1, "pthread_create");

	static unsigned long bases_with_hard_zero[] = {
		0, HARD_ZERO, 1, 0x200000000,
	};

	for (int local = 0; local < 4; local++) {
		for (int remote = 0; remote < 4; remote++) {
			for (unsigned short s = 0; s < 5; s++) {
				unsigned short sel = s;
				if (s == 4)
					asm ("mov %%ss, %0" : "=rm" (sel));
				FUNC12(
					bases_with_hard_zero[local],
					sel,
					bases_with_hard_zero[remote]);
			}
		}
	}

	FUNC17();

	if (have_fsgsbase) {
		unsigned short ss;

		asm volatile ("mov %%ss, %0" : "=rm" (ss));

		FUNC18(0, 0);
		FUNC18(0, 1);
		FUNC18(0, 0x200000000);
		FUNC18(0, 0xffffffffffffffff);
		FUNC18(ss, 0);
		FUNC18(ss, 1);
		FUNC18(ss, 0x200000000);
		FUNC18(ss, 0xffffffffffffffff);
	}

	ftx = 3;  /* Kill the thread. */
	FUNC15(SYS_futex, &ftx, FUTEX_WAKE, 0, NULL, NULL, 0);

	if (FUNC9(thread, NULL) != 0)
		FUNC4(1, "pthread_join");

	FUNC16();

	return nerrs == 0 ? 0 : 1;
}