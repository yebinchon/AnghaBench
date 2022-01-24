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
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int,int,int) ; 
 int FUNC12 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC13(void)
{
	cpu_set_t cpuset;
	FUNC1(&cpuset);
	FUNC0(0, &cpuset);
	if (FUNC10(0, sizeof(cpuset), &cpuset) != 0)
		FUNC4(1, "sched_setaffinity to CPU 0");

	FUNC5(0x80);
	FUNC5(0xed);

	/*
	 * Probe for ioperm support.  Note that clearing ioperm bits
	 * works even as nonroot.
	 */
	FUNC9("[RUN]\tenable 0x80\n");
	if (FUNC8(0x80, 1, 1) != 0) {
		FUNC9("[OK]\tioperm(0x80, 1, 1) failed (%d) -- try running as root\n",
		       errno);
		return 0;
	}
	FUNC6(0x80);
	FUNC5(0xed);

	FUNC9("[RUN]\tdisable 0x80\n");
	if (FUNC8(0x80, 1, 0) != 0) {
		FUNC9("[FAIL]\tioperm(0x80, 1, 0) failed (%d)", errno);
		return 1;
	}
	FUNC5(0x80);
	FUNC5(0xed);

	/* Make sure that fork() preserves ioperm. */
	if (FUNC8(0x80, 1, 1) != 0) {
		FUNC9("[FAIL]\tioperm(0x80, 1, 0) failed (%d)", errno);
		return 1;
	}

	pid_t child = FUNC7();
	if (child == -1)
		FUNC4(1, "fork");

	if (child == 0) {
		FUNC9("[RUN]\tchild: check that we inherited permissions\n");
		FUNC6(0x80);
		FUNC5(0xed);
		return 0;
	} else {
		int status;
		if (FUNC12(child, &status, 0) != child ||
		    !FUNC3(status)) {
			FUNC9("[FAIL]\tChild died\n");
			nerrs++;
		} else if (FUNC2(status) != 0) {
			FUNC9("[FAIL]\tChild failed\n");
			nerrs++;
		} else {
			FUNC9("[OK]\tChild succeeded\n");
		}
	}

	/* Test the capability checks. */

	FUNC9("\tDrop privileges\n");
	if (FUNC11(1, 1, 1) != 0) {
		FUNC9("[WARN]\tDropping privileges failed\n");
		return 0;
	}

	FUNC9("[RUN]\tdisable 0x80\n");
	if (FUNC8(0x80, 1, 0) != 0) {
		FUNC9("[FAIL]\tioperm(0x80, 1, 0) failed (%d)", errno);
		return 1;
	}
	FUNC9("[OK]\tit worked\n");

	FUNC9("[RUN]\tenable 0x80 again\n");
	if (FUNC8(0x80, 1, 1) == 0) {
		FUNC9("[FAIL]\tit succeeded but should have failed.\n");
		return 1;
	}
	FUNC9("[OK]\tit failed\n");
	return 0;
}