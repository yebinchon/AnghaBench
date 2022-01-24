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
typedef  int /*<<< orphan*/  file ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXPGPATH ; 
 char* FUNC0 (char*) ; 
 char* difffilename ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 void* logfile ; 
 char* logfilename ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* outputdir ; 
 char* FUNC7 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void)
{
	char		file[MAXPGPATH];
	FILE	   *difffile;

	/* create outputdir directory if not present */
	if (!FUNC1(outputdir))
		FUNC6(outputdir);

	/* create the log file (copy of running status output) */
	FUNC8(file, sizeof(file), "%s/regression.out", outputdir);
	logfilename = FUNC7(file);
	logfile = FUNC4(logfilename, "w");
	if (!logfile)
	{
		FUNC5(stderr, FUNC0("%s: could not open file \"%s\" for writing: %s\n"),
				progname, logfilename, FUNC9(errno));
		FUNC2(2);
	}

	/* create the diffs file as empty */
	FUNC8(file, sizeof(file), "%s/regression.diffs", outputdir);
	difffilename = FUNC7(file);
	difffile = FUNC4(difffilename, "w");
	if (!difffile)
	{
		FUNC5(stderr, FUNC0("%s: could not open file \"%s\" for writing: %s\n"),
				progname, difffilename, FUNC9(errno));
		FUNC2(2);
	}
	/* we don't keep the diffs file open continuously */
	FUNC3(difffile);

	/* also create the results directory if not present */
	FUNC8(file, sizeof(file), "%s/results", outputdir);
	if (!FUNC1(file))
		FUNC6(file);
}