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
typedef  scalar_t__ uid_t ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ EXIT_FAILURE ; 
 scalar_t__ EXIT_SUCCESS ; 
 int WCONTINUED ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int WUNTRACED ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (int,int*,int) ; 

__attribute__((used)) static void FUNC10(uid_t child_uid, bool expect_success)
{
	pid_t cpid, w;
	int wstatus;

	cpid = FUNC6();
	if (cpid == -1) {
		FUNC4("fork\n");
	}

	if (cpid == 0) {	    /* Code executed by child */
		FUNC8(child_uid);
		if (FUNC7() == child_uid)
			FUNC5(EXIT_SUCCESS);
		else
			FUNC5(EXIT_FAILURE);
	} else {		 /* Code executed by parent */
		do {
			w = FUNC9(cpid, &wstatus, WUNTRACED | WCONTINUED);
			if (w == -1) {
				FUNC4("waitpid\n");
			}

			if (FUNC1(wstatus)) {
				if (FUNC0(wstatus) == EXIT_SUCCESS) {
					if (expect_success) {
						return;
					} else {
						FUNC4("unexpected success\n");
					}
				} else {
					if (expect_success) {
						FUNC4("unexpected failure\n");
					} else {
						return;
					}
				}
			} else if (FUNC2(wstatus)) {
				if (FUNC3(wstatus) == 9) {
					if (expect_success)
						FUNC4("killed unexpectedly\n");
					else
						return;
				} else {
					FUNC4("unexpected signal: %d\n", wstatus);
				}
			} else {
				FUNC4("unexpected status: %d\n", wstatus);
			}
		} while (!FUNC1(wstatus) && !FUNC2(wstatus));
	}

	FUNC4("should not reach here\n");
}