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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  process_alarm ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_cleanup ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(int argc, char *argv[])
{
	FUNC3(argv[0]);
	FUNC6(argv[0], FUNC0("pg_test_fsync"));
	progname = FUNC1(argv[0]);

	FUNC2(argc, argv);

	/* Prevent leaving behind the test file */
	FUNC4(SIGINT, signal_cleanup);
	FUNC4(SIGTERM, signal_cleanup);
#ifndef WIN32
	FUNC4(SIGALRM, process_alarm);
#endif
#ifdef SIGHUP
	/* Not defined on win32 */
	pqsignal(SIGHUP, signal_cleanup);
#endif

	FUNC5();

	FUNC9();

	/* Test using 1 XLOG_BLCKSZ write */
	FUNC11(1);

	/* Test using 2 XLOG_BLCKSZ writes */
	FUNC11(2);

	FUNC10();

	FUNC7();

	FUNC8();

	FUNC12(filename);

	return 0;
}