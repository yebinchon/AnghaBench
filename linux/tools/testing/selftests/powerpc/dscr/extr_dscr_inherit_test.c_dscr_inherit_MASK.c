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

/* Variables and functions */
 unsigned long COUNT ; 
 unsigned long DSCR_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned long FUNC5 () ; 
 unsigned long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC12 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC13(void)
{
	unsigned long i, dscr = 0;
	pid_t pid;

	FUNC11(FUNC7());
	FUNC9(dscr);

	for (i = 0; i < COUNT; i++) {
		unsigned long cur_dscr, cur_dscr_usr;

		dscr++;
		if (dscr > DSCR_MAX)
			dscr = 0;

		if (i % 2 == 0)
			FUNC10(dscr);
		else
			FUNC9(dscr);

		pid = FUNC3();
		if (pid == -1) {
			FUNC8("fork() failed");
			FUNC2(1);
		} else if (pid) {
			int status;

			if (FUNC12(pid, &status, 0) == -1) {
				FUNC8("waitpid() failed");
				FUNC2(1);
			}

			if (!FUNC1(status)) {
				FUNC4(stderr, "Child didn't exit cleanly\n");
				FUNC2(1);
			}

			if (FUNC0(status) != 0) {
				FUNC4(stderr, "Child didn't exit cleanly\n");
				return 1;
			}
		} else {
			cur_dscr = FUNC5();
			if (cur_dscr != dscr) {
				FUNC4(stderr, "Kernel DSCR should be %ld "
					"but is %ld\n", dscr, cur_dscr);
				FUNC2(1);
			}

			cur_dscr_usr = FUNC6();
			if (cur_dscr_usr != dscr) {
				FUNC4(stderr, "User DSCR should be %ld "
					"but is %ld\n", dscr, cur_dscr_usr);
				FUNC2(1);
			}
			FUNC2(0);
		}
	}
	return 0;
}