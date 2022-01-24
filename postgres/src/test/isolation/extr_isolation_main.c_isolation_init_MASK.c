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
 size_t MAXPGPATH ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dblist ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  saved_argv0 ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static void
FUNC5(int argc, char **argv)
{
	size_t		argv0_len;

	/*
	 * We unfortunately cannot do the find_other_exec() lookup to find the
	 * "isolationtester" binary here.  regression_main() calls the
	 * initialization functions before parsing the commandline arguments and
	 * thus hasn't changed the library search path at this point which in turn
	 * can cause the "isolationtester -V" invocation that find_other_exec()
	 * does to fail since it's linked to libpq.  So we instead copy argv[0]
	 * and do the lookup the first time through isolation_start_test().
	 */
	argv0_len = FUNC4(saved_argv0, argv[0], MAXPGPATH);
	if (argv0_len >= MAXPGPATH)
	{
		FUNC3(stderr, FUNC0("path for isolationtester executable is longer than %d bytes\n"),
				(int) (MAXPGPATH - 1));
		FUNC2(2);
	}

	/* set default regression database name */
	FUNC1(&dblist, "isolation_regression");
}