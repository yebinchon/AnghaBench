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
 int /*<<< orphan*/  CF ; 
 int /*<<< orphan*/  PF ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  ZF ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
 double FUNC6 (int /*<<< orphan*/ ) ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(int argc, char **argv, char **envp)
{
	int err = 0;

	/* SIGILL triggers on 32-bit kernels w/o fcomi emulation
	 * when run with "no387 nofxsr". Other signals are caught
	 * just in case.
	 */
	FUNC9(SIGILL, sighandler);
	FUNC9(SIGFPE, sighandler);
	FUNC9(SIGSEGV, sighandler);

	FUNC8("[RUN]\tTesting fcmovCC instructions\n");
	/* If fcmovCC() returns 1.0, the move wasn't done */
	err |= !(FUNC0(0)   == 1.0); err |= !(FUNC3(0)  != 1.0);
	err |= !(FUNC2(0)   == 1.0); err |= !(FUNC5(0)  != 1.0);
	err |= !(FUNC1(0)  == 1.0); err |= !(FUNC4(0) != 1.0);
	err |= !(FUNC7(0)   == 1.0); err |= !(FUNC6(0)  != 1.0);

	err |= !(FUNC0(CF)  != 1.0); err |= !(FUNC3(CF)  == 1.0);
	err |= !(FUNC2(CF)  == 1.0); err |= !(FUNC5(CF)  != 1.0);
	err |= !(FUNC1(CF) != 1.0); err |= !(FUNC4(CF) == 1.0);
	err |= !(FUNC7(CF)  == 1.0); err |= !(FUNC6(CF)  != 1.0);

	err |= !(FUNC0(ZF)  == 1.0); err |= !(FUNC3(ZF)  != 1.0);
	err |= !(FUNC2(ZF)  != 1.0); err |= !(FUNC5(ZF)  == 1.0);
	err |= !(FUNC1(ZF) != 1.0); err |= !(FUNC4(ZF) == 1.0);
	err |= !(FUNC7(ZF)  == 1.0); err |= !(FUNC6(ZF)  != 1.0);

	err |= !(FUNC0(PF)  == 1.0); err |= !(FUNC3(PF)  != 1.0);
	err |= !(FUNC2(PF)  == 1.0); err |= !(FUNC5(PF)  != 1.0);
	err |= !(FUNC1(PF) == 1.0); err |= !(FUNC4(PF) != 1.0);
	err |= !(FUNC7(PF)  != 1.0); err |= !(FUNC6(PF)  == 1.0);

        if (!err)
                FUNC8("[OK]\tfcmovCC\n");
	else
		FUNC8("[FAIL]\tfcmovCC errors: %d\n", err);

	return err;
}