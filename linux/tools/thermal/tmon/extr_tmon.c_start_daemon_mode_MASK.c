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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int daemon_mode ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8()
{
	daemon_mode = 1;
	/* fork */
	pid_t	sid, pid = FUNC4();
	if (pid < 0) {
		FUNC3(EXIT_FAILURE);
	} else if (pid > 0)
		/* kill parent */
		FUNC3(EXIT_SUCCESS);

	/* disable TUI, it may not be necessary, but saves some resource */
	FUNC2();

	/* change the file mode mask */
	FUNC7(S_IWGRP | S_IWOTH);

	/* new SID for the daemon process */
	sid = FUNC5();
	if (sid < 0)
		FUNC3(EXIT_FAILURE);

	/* change working directory */
	if ((FUNC0("/")) < 0)
		FUNC3(EXIT_FAILURE);


	FUNC6(10);

	FUNC1(STDIN_FILENO);
	FUNC1(STDOUT_FILENO);
	FUNC1(STDERR_FILENO);

}