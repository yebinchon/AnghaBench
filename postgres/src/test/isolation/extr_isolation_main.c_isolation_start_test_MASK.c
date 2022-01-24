#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  psql_cmd ;
typedef  int /*<<< orphan*/  outfile ;
typedef  int /*<<< orphan*/  infile ;
typedef  int /*<<< orphan*/  expectfile ;
typedef  int /*<<< orphan*/  _stringlist ;
struct TYPE_2__ {char* str; } ;
typedef  scalar_t__ PID_TYPE ;

/* Variables and functions */
 scalar_t__ INVALID_PID ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_ISOLATION_VERSIONSTR ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*) ; 
 TYPE_1__* dblist ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* inputdir ; 
 char* isolation_exec ; 
 char* launcher ; 
 int looked_up_isolation_exec ; 
 char* outputdir ; 
 char* FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  saved_argv0 ; 
 scalar_t__ FUNC9 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static PID_TYPE
FUNC12(const char *testname,
					 _stringlist **resultfiles,
					 _stringlist **expectfiles,
					 _stringlist **tags)
{
	PID_TYPE	pid;
	char		infile[MAXPGPATH];
	char		outfile[MAXPGPATH];
	char		expectfile[MAXPGPATH];
	char		psql_cmd[MAXPGPATH * 3];
	size_t		offset = 0;
	char	   *appnameenv;

	/* need to do the path lookup here, check isolation_init() for details */
	if (!looked_up_isolation_exec)
	{
		/* look for isolationtester binary */
		if (FUNC4(saved_argv0, "isolationtester",
							PG_ISOLATION_VERSIONSTR, isolation_exec) != 0)
		{
			FUNC5(stderr, "%s", FUNC0("could not find proper isolationtester binary\n"));
			FUNC2(2);
		}
		looked_up_isolation_exec = true;
	}

	/*
	 * Look for files in the output dir first, consistent with a vpath search.
	 * This is mainly to create more reasonable error messages if the file is
	 * not found.  It also allows local test overrides when running pg_regress
	 * outside of the source tree.
	 */
	FUNC9(infile, sizeof(infile), "%s/specs/%s.spec",
			 outputdir, testname);
	if (!FUNC3(infile))
		FUNC9(infile, sizeof(infile), "%s/specs/%s.spec",
				 inputdir, testname);

	FUNC9(outfile, sizeof(outfile), "%s/results/%s.out",
			 outputdir, testname);

	FUNC9(expectfile, sizeof(expectfile), "%s/expected/%s.out",
			 outputdir, testname);
	if (!FUNC3(expectfile))
		FUNC9(expectfile, sizeof(expectfile), "%s/expected/%s.out",
				 inputdir, testname);

	FUNC1(resultfiles, outfile);
	FUNC1(expectfiles, expectfile);

	if (launcher)
	{
		offset += FUNC9(psql_cmd + offset, sizeof(psql_cmd) - offset,
						   "%s ", launcher);
		if (offset >= sizeof(psql_cmd))
		{
			FUNC5(stderr, "%s", FUNC0("command too long\n"));
			FUNC2(2);
		}
	}

	offset += FUNC9(psql_cmd + offset, sizeof(psql_cmd) - offset,
					   "\"%s\" \"dbname=%s\" < \"%s\" > \"%s\" 2>&1",
					   isolation_exec,
					   dblist->str,
					   infile,
					   outfile);
	if (offset >= sizeof(psql_cmd))
	{
		FUNC5(stderr, "%s", FUNC0("command too long\n"));
		FUNC2(2);
	}

	appnameenv = FUNC7("PGAPPNAME=isolation/%s", testname);
	FUNC8(appnameenv);

	pid = FUNC10(psql_cmd);

	if (pid == INVALID_PID)
	{
		FUNC5(stderr, FUNC0("could not start process for test %s\n"),
				testname);
		FUNC2(2);
	}

	FUNC11("PGAPPNAME");
	FUNC6(appnameenv);

	return pid;
}