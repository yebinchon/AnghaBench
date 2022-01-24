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
 int /*<<< orphan*/  FPM_CLEANUP_PARENT_EXEC ; 
 int /*<<< orphan*/  FPM_EXIT_SOFTWARE ; 
 int /*<<< orphan*/  ZLOG_DEBUG ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * saved_argv ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC6() /* {{{ */
{
	FUNC5(ZLOG_DEBUG, "Blocking some signals before reexec");
	if (0 > FUNC3()) {
		FUNC5(ZLOG_WARNING, "concurrent reloads may be unstable");
	}

	FUNC5(ZLOG_NOTICE, "reloading: execvp(\"%s\", {\"%s\""
			"%s%s%s" "%s%s%s" "%s%s%s" "%s%s%s" "%s%s%s"
			"%s%s%s" "%s%s%s" "%s%s%s" "%s%s%s" "%s%s%s"
		"})",
		saved_argv[0], saved_argv[0],
		FUNC4(1),
		FUNC4(2),
		FUNC4(3),
		FUNC4(4),
		FUNC4(5),
		FUNC4(6),
		FUNC4(7),
		FUNC4(8),
		FUNC4(9),
		FUNC4(10)
	);

	FUNC2(FPM_CLEANUP_PARENT_EXEC);
	FUNC0(saved_argv[0], saved_argv);
	FUNC5(ZLOG_SYSERROR, "failed to reload: execvp() failed");
	FUNC1(FPM_EXIT_SOFTWARE);
}