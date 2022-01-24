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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  bufsize ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  test_alignment_handler_fp ; 
 int /*<<< orphan*/  test_alignment_handler_fp_205 ; 
 int /*<<< orphan*/  test_alignment_handler_fp_206 ; 
 int /*<<< orphan*/  test_alignment_handler_integer ; 
 int /*<<< orphan*/  test_alignment_handler_integer_206 ; 
 int /*<<< orphan*/  test_alignment_handler_vmx ; 
 int /*<<< orphan*/  test_alignment_handler_vsx_206 ; 
 int /*<<< orphan*/  test_alignment_handler_vsx_207 ; 
 int /*<<< orphan*/  test_alignment_handler_vsx_300 ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int FUNC8(int argc, char *argv[])
{

	struct sigaction sa;
	int rc = 0;
	int option = 0;

	while ((option = FUNC1(argc, argv, "d")) != -1) {
		switch (option) {
		case 'd':
			debug++;
			break;
		default:
			FUNC7(argv[0]);
			FUNC0(1);
		}
	}

	bufsize = FUNC2();

	sa.sa_sigaction = sighandler;
	FUNC5(&sa.sa_mask);
	sa.sa_flags = SA_SIGINFO;
	if (FUNC4(SIGSEGV, &sa, NULL) == -1
	    || FUNC4(SIGBUS, &sa, NULL) == -1
	    || FUNC4(SIGILL, &sa, NULL) == -1) {
		FUNC3("sigaction");
		FUNC0(1);
	}

	rc |= FUNC6(test_alignment_handler_vsx_206,
			   "test_alignment_handler_vsx_206");
	rc |= FUNC6(test_alignment_handler_vsx_207,
			   "test_alignment_handler_vsx_207");
	rc |= FUNC6(test_alignment_handler_vsx_300,
			   "test_alignment_handler_vsx_300");
	rc |= FUNC6(test_alignment_handler_integer,
			   "test_alignment_handler_integer");
	rc |= FUNC6(test_alignment_handler_integer_206,
			   "test_alignment_handler_integer_206");
	rc |= FUNC6(test_alignment_handler_vmx,
			   "test_alignment_handler_vmx");
	rc |= FUNC6(test_alignment_handler_fp,
			   "test_alignment_handler_fp");
	rc |= FUNC6(test_alignment_handler_fp_205,
			   "test_alignment_handler_fp_205");
	rc |= FUNC6(test_alignment_handler_fp_206,
			   "test_alignment_handler_fp_206");
	return rc;
}