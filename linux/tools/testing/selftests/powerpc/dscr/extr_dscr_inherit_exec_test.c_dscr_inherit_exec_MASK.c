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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  prog ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC11 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC12(void)
{
	unsigned long i, dscr = 0;
	pid_t pid;

	for (i = 0; i < COUNT; i++) {
		dscr++;
		if (dscr > DSCR_MAX)
			dscr = 0;

		if (dscr == FUNC6())
			continue;

		if (i % 2 == 0)
			FUNC9(dscr);
		else
			FUNC8(dscr);

		pid = FUNC4();
		if (pid == -1) {
			FUNC7("fork() failed");
			FUNC3(1);
		} else if (pid) {
			int status;

			if (FUNC11(pid, &status, 0) == -1) {
				FUNC7("waitpid() failed");
				FUNC3(1);
			}

			if (!FUNC1(status)) {
				FUNC5(stderr, "Child didn't exit cleanly\n");
				FUNC3(1);
			}

			if (FUNC0(status) != 0) {
				FUNC5(stderr, "Child didn't exit cleanly\n");
				return 1;
			}
		} else {
			char dscr_str[16];

			FUNC10(dscr_str, "%ld", dscr);
			FUNC2(prog, prog, "exec", dscr_str, NULL);
			FUNC3(1);
		}
	}
	return 0;
}