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
typedef  int /*<<< orphan*/  insource ;
typedef  int /*<<< orphan*/  inprg ;
typedef  int /*<<< orphan*/  expectfile_stdout ;
typedef  int /*<<< orphan*/  expectfile_stderr ;
typedef  int /*<<< orphan*/  expectfile_source ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  _stringlist ;
typedef  scalar_t__ PID_TYPE ;

/* Variables and functions */
 scalar_t__ INVALID_PID ; 
 int MAXPGPATH ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* inputdir ; 
 char* outputdir ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,...) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static PID_TYPE
FUNC13(const char *testname,
				_stringlist **resultfiles,
				_stringlist **expectfiles,
				_stringlist **tags)
{
	PID_TYPE	pid;
	char		inprg[MAXPGPATH];
	char		insource[MAXPGPATH];
	char	   *outfile_stdout,
				expectfile_stdout[MAXPGPATH];
	char	   *outfile_stderr,
				expectfile_stderr[MAXPGPATH];
	char	   *outfile_source,
				expectfile_source[MAXPGPATH];
	char		cmd[MAXPGPATH * 3];
	char	   *testname_dash;
	char	   *appnameenv;

	FUNC9(inprg, sizeof(inprg), "%s/%s", inputdir, testname);

	testname_dash = FUNC11(testname);
	FUNC8(testname_dash, "/", "-");
	FUNC9(expectfile_stdout, sizeof(expectfile_stdout),
			 "%s/expected/%s.stdout",
			 outputdir, testname_dash);
	FUNC9(expectfile_stderr, sizeof(expectfile_stderr),
			 "%s/expected/%s.stderr",
			 outputdir, testname_dash);
	FUNC9(expectfile_source, sizeof(expectfile_source),
			 "%s/expected/%s.c",
			 outputdir, testname_dash);

	/*
	 * We can use replace_string() here because the replacement string does
	 * not occupy more space than the replaced one.
	 */
	outfile_stdout = FUNC11(expectfile_stdout);
	FUNC8(outfile_stdout, "/expected/", "/results/");
	outfile_stderr = FUNC11(expectfile_stderr);
	FUNC8(outfile_stderr, "/expected/", "/results/");
	outfile_source = FUNC11(expectfile_source);
	FUNC8(outfile_source, "/expected/", "/results/");

	FUNC1(resultfiles, outfile_stdout);
	FUNC1(expectfiles, expectfile_stdout);
	FUNC1(tags, "stdout");

	FUNC1(resultfiles, outfile_stderr);
	FUNC1(expectfiles, expectfile_stderr);
	FUNC1(tags, "stderr");

	FUNC1(resultfiles, outfile_source);
	FUNC1(expectfiles, expectfile_source);
	FUNC1(tags, "source");

	FUNC9(insource, sizeof(insource), "%s.c", testname);
	FUNC2(insource, outfile_source);

	FUNC9(inprg, sizeof(inprg), "%s/%s", inputdir, testname);

	FUNC9(cmd, sizeof(cmd),
			 "\"%s\" >\"%s\" 2>\"%s\"",
			 inprg,
			 outfile_stdout,
			 outfile_stderr);

	appnameenv = FUNC6("PGAPPNAME=ecpg/%s", testname_dash);
	FUNC7(appnameenv);

	pid = FUNC10(cmd);

	if (pid == INVALID_PID)
	{
		FUNC4(stderr, FUNC0("could not start process for test %s\n"),
				testname);
		FUNC3(2);
	}

	FUNC12("PGAPPNAME");
	FUNC5(appnameenv);

	FUNC5(testname_dash);
	FUNC5(outfile_stdout);
	FUNC5(outfile_stderr);
	FUNC5(outfile_source);

	return pid;
}