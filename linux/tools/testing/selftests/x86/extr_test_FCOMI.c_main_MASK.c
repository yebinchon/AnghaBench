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
 int CF ; 
 int PF ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int ZF ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 

int FUNC9(int argc, char **argv, char **envp)
{
	int err = 0;

	/* SIGILL triggers on 32-bit kernels w/o fcomi emulation
	 * when run with "no387 nofxsr". Other signals are caught
	 * just in case.
	 */
	FUNC1(SIGILL, sighandler);
	FUNC1(SIGFPE, sighandler);
	FUNC1(SIGSEGV, sighandler);

	FUNC0("[RUN]\tTesting f[u]comi[p] instructions\n");
	err |= FUNC2(0);
	err |= FUNC3(0);
	err |= FUNC6(0);
	err |= FUNC7(0);
	err |= FUNC2(CF|ZF|PF);
	err |= FUNC3(CF|ZF|PF);
	err |= FUNC6(CF|ZF|PF);
	err |= FUNC7(CF|ZF|PF);
	err |= FUNC4(0);
	err |= FUNC5(0);
	err |= FUNC8(0);
	err |= FUNC4(CF|ZF|PF);
	err |= FUNC5(CF|ZF|PF);
	err |= FUNC8(CF|ZF|PF);
	if (!err)
		FUNC0("[OK]\tf[u]comi[p]\n");
	else
		FUNC0("[FAIL]\tf[u]comi[p] errors: %d\n", err);

	return err;
}