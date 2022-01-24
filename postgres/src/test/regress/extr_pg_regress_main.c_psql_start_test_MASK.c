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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*) ; 
 char* bindir ; 
 TYPE_1__* dblist ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* inputdir ; 
 char* launcher ; 
 char* outputdir ; 
 char* FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static PID_TYPE
FUNC11(const char *testname,
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

	/*
	 * Look for files in the output dir first, consistent with a vpath search.
	 * This is mainly to create more reasonable error messages if the file is
	 * not found.  It also allows local test overrides when running pg_regress
	 * outside of the source tree.
	 */
	FUNC8(infile, sizeof(infile), "%s/sql/%s.sql",
			 outputdir, testname);
	if (!FUNC3(infile))
		FUNC8(infile, sizeof(infile), "%s/sql/%s.sql",
				 inputdir, testname);

	FUNC8(outfile, sizeof(outfile), "%s/results/%s.out",
			 outputdir, testname);

	FUNC8(expectfile, sizeof(expectfile), "%s/expected/%s.out",
			 outputdir, testname);
	if (!FUNC3(expectfile))
		FUNC8(expectfile, sizeof(expectfile), "%s/expected/%s.out",
				 inputdir, testname);

	FUNC1(resultfiles, outfile);
	FUNC1(expectfiles, expectfile);

	if (launcher)
	{
		offset += FUNC8(psql_cmd + offset, sizeof(psql_cmd) - offset,
						   "%s ", launcher);
		if (offset >= sizeof(psql_cmd))
		{
			FUNC4(stderr, "%s", FUNC0("command too long\n"));
			FUNC2(2);
		}
	}

	/*
	 * Use HIDE_TABLEAM to hide different AMs to allow to use regression tests
	 * against different AMs without unnecessary differences.
	 */
	offset += FUNC8(psql_cmd + offset, sizeof(psql_cmd) - offset,
					   "\"%s%spsql\" -X -a -q -d \"%s\" -v %s < \"%s\" > \"%s\" 2>&1",
					   bindir ? bindir : "",
					   bindir ? "/" : "",
					   dblist->str,
					   "HIDE_TABLEAM=\"on\"",
					   infile,
					   outfile);
	if (offset >= sizeof(psql_cmd))
	{
		FUNC4(stderr, "%s", FUNC0("command too long\n"));
		FUNC2(2);
	}

	appnameenv = FUNC6("PGAPPNAME=pg_regress/%s", testname);
	FUNC7(appnameenv);

	pid = FUNC9(psql_cmd);

	if (pid == INVALID_PID)
	{
		FUNC4(stderr, FUNC0("could not start process for test %s\n"),
				testname);
		FUNC2(2);
	}

	FUNC10("PGAPPNAME");
	FUNC5(appnameenv);

	return pid;
}