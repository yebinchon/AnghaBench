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

/* Variables and functions */
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

int FUNC3(int argc, char **argv, char **envp)
{
	int err = 0;

	/* SIGILL triggers on 32-bit kernels w/o fisttp emulation
	 * when run with "no387 nofxsr". Other signals are caught
	 * just in case.
	 */
	FUNC1(SIGILL, sighandler);
	FUNC1(SIGFPE, sighandler);
	FUNC1(SIGSEGV, sighandler);

	FUNC0("[RUN]\tTesting fisttp instructions\n");
	err |= FUNC2();
	if (!err)
		FUNC0("[OK]\tfisttp\n");
	else
		FUNC0("[FAIL]\tfisttp errors: %d\n", err);

	return err;
}