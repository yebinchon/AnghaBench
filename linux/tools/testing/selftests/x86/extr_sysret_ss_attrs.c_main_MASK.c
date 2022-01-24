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
 int MAP_32BIT ; 
 int MAP_ANONYMOUS ; 
 unsigned char* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_ss ; 
 int /*<<< orphan*/  threadproc ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10()
{
	/*
	 * Start a busy-looping thread on the same CPU we're on.
	 * For simplicity, just stick everything to CPU 0.  This will
	 * fail in some containers, but that's probably okay.
	 */
	cpu_set_t cpuset;
	FUNC1(&cpuset);
	FUNC0(0, &cpuset);
	if (FUNC8(0, sizeof(cpuset), &cpuset) != 0)
		FUNC6("[WARN]\tsched_setaffinity failed\n");

	pthread_t thread;
	if (FUNC7(&thread, 0, threadproc, 0) != 0)
		FUNC3(1, "pthread_create");

#ifdef __x86_64__
	unsigned char *stack32 = FUNC4(NULL, 4096, PROT_READ | PROT_WRITE,
				      MAP_32BIT | MAP_ANONYMOUS | MAP_PRIVATE,
				      -1, 0);
	if (stack32 == MAP_FAILED)
		FUNC3(1, "mmap");
#endif

	FUNC6("[RUN]\tSyscalls followed by SS validation\n");

	for (int i = 0; i < 1000; i++) {
		/*
		 * Go to sleep and return using sysret (if we're 64-bit
		 * or we're 32-bit on AMD on a 64-bit kernel).  On AMD CPUs,
		 * SYSRET doesn't fix up the cached SS descriptor, so the
		 * kernel needs some kind of workaround to make sure that we
		 * end the system call with a valid stack segment.  This
		 * can be a confusing failure because the SS *selector*
		 * is the same regardless.
		 */
		FUNC9(2);

#ifdef __x86_64__
		/*
		 * On 32-bit, just doing a syscall through glibc is enough
		 * to cause a crash if our cached SS descriptor is invalid.
		 * On 64-bit, it's not, so try extra hard.
		 */
		FUNC2(stack32 + 4088, test_ss);
#endif
	}

	FUNC6("[OK]\tWe survived\n");

#ifdef __x86_64__
	FUNC5(stack32, 4096);
#endif

	return 0;
}