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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  cpuset ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGSEGV ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int errno ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  jmpbuf ; 
 scalar_t__ nerrs ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int,int) ; 
 int /*<<< orphan*/  sigsegv ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC13(void)
{
	cpu_set_t cpuset;
	FUNC1(&cpuset);
	FUNC0(0, &cpuset);
	if (FUNC8(0, sizeof(cpuset), &cpuset) != 0)
		FUNC4(1, "sched_setaffinity to CPU 0");

	/* Probe for iopl support.  Note that iopl(0) works even as nonroot. */
	if (FUNC6(3) != 0) {
		FUNC7("[OK]\tiopl(3) failed (%d) -- try running as root\n",
		       errno);
		return 0;
	}

	/* Restore our original state prior to starting the test. */
	if (FUNC6(0) != 0)
		FUNC4(1, "iopl(0)");

	pid_t child = FUNC5();
	if (child == -1)
		FUNC4(1, "fork");

	if (child == 0) {
		FUNC7("\tchild: set IOPL to 3\n");
		if (FUNC6(3) != 0)
			FUNC4(1, "iopl");

		FUNC7("[RUN]\tchild: write to 0x80\n");
		asm volatile ("outb %%al, $0x80" : : "a" (0));

		return 0;
	} else {
		int status;
		if (FUNC12(child, &status, 0) != child ||
		    !FUNC3(status)) {
			FUNC7("[FAIL]\tChild died\n");
			nerrs++;
		} else if (FUNC2(status) != 0) {
			FUNC7("[FAIL]\tChild failed\n");
			nerrs++;
		} else {
			FUNC7("[OK]\tChild succeeded\n");
		}
	}

	FUNC7("[RUN]\tparent: write to 0x80 (should fail)\n");

	FUNC9(SIGSEGV, sigsegv, 0);
	if (FUNC11(jmpbuf, 1) != 0) {
		FUNC7("[OK]\twrite was denied\n");
	} else {
		asm volatile ("outb %%al, $0x80" : : "a" (0));
		FUNC7("[FAIL]\twrite was allowed\n");
		nerrs++;
	}

	/* Test the capability checks. */
	FUNC7("\tiopl(3)\n");
	if (FUNC6(3) != 0)
		FUNC4(1, "iopl(3)");

	FUNC7("\tDrop privileges\n");
	if (FUNC10(1, 1, 1) != 0) {
		FUNC7("[WARN]\tDropping privileges failed\n");
		goto done;
	}

	FUNC7("[RUN]\tiopl(3) unprivileged but with IOPL==3\n");
	if (FUNC6(3) != 0) {
		FUNC7("[FAIL]\tiopl(3) should work if iopl is already 3 even if unprivileged\n");
		nerrs++;
	}

	FUNC7("[RUN]\tiopl(0) unprivileged\n");
	if (FUNC6(0) != 0) {
		FUNC7("[FAIL]\tiopl(0) should work if iopl is already 3 even if unprivileged\n");
		nerrs++;
	}

	FUNC7("[RUN]\tiopl(3) unprivileged\n");
	if (FUNC6(3) == 0) {
		FUNC7("[FAIL]\tiopl(3) should fail if when unprivileged if iopl==0\n");
		nerrs++;
	} else {
		FUNC7("[OK]\tFailed as expected\n");
	}

done:
	return nerrs ? 1 : 0;
}