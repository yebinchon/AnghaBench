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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void
FUNC9(const char *conditionName,
					 const char *errorType,
					 const char *fileName,
					 int lineNumber)
{
	if (!FUNC0(conditionName)
		|| !FUNC0(fileName)
		|| !FUNC0(errorType))
		FUNC8("TRAP: ExceptionalCondition: bad arguments\n");
	else
	{
		FUNC8("TRAP: %s(\"%s\", File: \"%s\", Line: %d)\n",
					 errorType, conditionName,
					 fileName, lineNumber);
	}

	/* Usually this shouldn't be needed, but make sure the msg went out */
	FUNC4(stderr);

#ifdef HAVE_BACKTRACE_SYMBOLS
	{
		void	   *buf[100];
		int			nframes;

		nframes = backtrace(buf, lengthof(buf));
		backtrace_symbols_fd(buf, nframes, fileno(stderr));
	}
#endif

#ifdef SLEEP_ON_ASSERT

	/*
	 * It would be nice to use pg_usleep() here, but only does 2000 sec or 33
	 * minutes, which seems too short.
	 */
	sleep(1000000);
#endif

	FUNC1();
}