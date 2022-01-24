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
typedef  int uint32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  additional_ext ; 
 int /*<<< orphan*/  exclusiveCleanupFileName ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/  restartWALFileName ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int*,int*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(void)
{
	bool		fnameOK = false;

	FUNC3(restartWALFileName, additional_ext);

	/*
	 * If restartWALFileName is a WAL file name then just use it directly. If
	 * restartWALFileName is a .partial or .backup filename, make sure we use
	 * the prefix of the filename, otherwise we will remove wrong files since
	 * 000000010000000000000010.partial and
	 * 000000010000000000000010.00000020.backup are after
	 * 000000010000000000000010.
	 */
	if (FUNC2(restartWALFileName))
	{
		FUNC10(exclusiveCleanupFileName, restartWALFileName);
		fnameOK = true;
	}
	else if (FUNC1(restartWALFileName))
	{
		int			args;
		uint32		tli = 1,
					log = 0,
					seg = 0;

		args = FUNC9(restartWALFileName, "%08X%08X%08X.partial",
					  &tli, &log, &seg);
		if (args == 3)
		{
			fnameOK = true;

			/*
			 * Use just the prefix of the filename, ignore everything after
			 * first period
			 */
			FUNC4(exclusiveCleanupFileName, tli, log, seg);
		}
	}
	else if (FUNC0(restartWALFileName))
	{
		int			args;
		uint32		tli = 1,
					log = 0,
					seg = 0,
					offset = 0;

		args = FUNC9(restartWALFileName, "%08X%08X%08X.%08X.backup", &tli, &log, &seg, &offset);
		if (args == 4)
		{
			fnameOK = true;

			/*
			 * Use just the prefix of the filename, ignore everything after
			 * first period
			 */
			FUNC4(exclusiveCleanupFileName, tli, log, seg);
		}
	}

	if (!fnameOK)
	{
		FUNC8("invalid file name argument");
		FUNC7(stderr, FUNC5("Try \"%s --help\" for more information.\n"), progname);
		FUNC6(2);
	}
}