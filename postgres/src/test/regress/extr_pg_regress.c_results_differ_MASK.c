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
typedef  int /*<<< orphan*/  expectfile ;
typedef  int /*<<< orphan*/  diff ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  best_expect_file ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXPGPATH ; 
 char* FUNC0 (char*) ; 
 char* basic_diff_opts ; 
 char* difffilename ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,int) ; 
 char* FUNC9 (char const*,char const*) ; 
 char* pretty_diff_opts ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static bool
FUNC17(const char *testname, const char *resultsfile, const char *default_expectfile)
{
	char		expectfile[MAXPGPATH];
	char		diff[MAXPGPATH];
	char		cmd[MAXPGPATH * 3];
	char		best_expect_file[MAXPGPATH];
	FILE	   *difffile;
	int			best_line_count;
	int			i;
	int			l;
	const char *platform_expectfile;

	/*
	 * We can pass either the resultsfile or the expectfile, they should have
	 * the same type (filename.type) anyway.
	 */
	platform_expectfile = FUNC9(testname, resultsfile);

	FUNC14(expectfile, default_expectfile, sizeof(expectfile));
	if (platform_expectfile)
	{
		/*
		 * Replace everything after the last slash in expectfile with what the
		 * platform_expectfile contains.
		 */
		char	   *p = FUNC15(expectfile, '/');

		if (p)
			FUNC12(++p, platform_expectfile);
	}

	/* Name to use for temporary diff file */
	FUNC11(diff, sizeof(diff), "%s.diff", resultsfile);

	/* OK, run the diff */
	FUNC11(cmd, sizeof(cmd),
			 "diff %s \"%s\" \"%s\" > \"%s\"",
			 basic_diff_opts, expectfile, resultsfile, diff);

	/* Is the diff file empty? */
	if (FUNC10(cmd, diff) == 0)
	{
		FUNC16(diff);
		return false;
	}

	/* There may be secondary comparison files that match better */
	best_line_count = FUNC4(diff);
	FUNC12(best_expect_file, expectfile);

	for (i = 0; i <= 9; i++)
	{
		char	   *alt_expectfile;

		alt_expectfile = FUNC8(expectfile, i);
		if (!alt_expectfile)
		{
			FUNC6(&stderr, FUNC0("Unable to check secondary comparison files: %s\n"),
					FUNC13(errno));
			FUNC1(2);
		}

		if (!FUNC3(alt_expectfile))
		{
			FUNC7(alt_expectfile);
			continue;
		}

		FUNC11(cmd, sizeof(cmd),
				 "diff %s \"%s\" \"%s\" > \"%s\"",
				 basic_diff_opts, alt_expectfile, resultsfile, diff);

		if (FUNC10(cmd, diff) == 0)
		{
			FUNC16(diff);
			FUNC7(alt_expectfile);
			return false;
		}

		l = FUNC4(diff);
		if (l < best_line_count)
		{
			/* This diff was a better match than the last one */
			best_line_count = l;
			FUNC14(best_expect_file, alt_expectfile, sizeof(best_expect_file));
		}
		FUNC7(alt_expectfile);
	}

	/*
	 * fall back on the canonical results file if we haven't tried it yet and
	 * haven't found a complete match yet.
	 */

	if (platform_expectfile)
	{
		FUNC11(cmd, sizeof(cmd),
				 "diff %s \"%s\" \"%s\" > \"%s\"",
				 basic_diff_opts, default_expectfile, resultsfile, diff);

		if (FUNC10(cmd, diff) == 0)
		{
			/* No diff = no changes = good */
			FUNC16(diff);
			return false;
		}

		l = FUNC4(diff);
		if (l < best_line_count)
		{
			/* This diff was a better match than the last one */
			best_line_count = l;
			FUNC14(best_expect_file, default_expectfile, sizeof(best_expect_file));
		}
	}

	/*
	 * Use the best comparison file to generate the "pretty" diff, which we
	 * append to the diffs summary file.
	 */

	/* Write diff header */
	difffile = FUNC5(difffilename, "a");
	if (difffile)
	{
		FUNC6(difffile,
				"diff %s %s %s\n",
				pretty_diff_opts, best_expect_file, resultsfile);
		FUNC2(difffile);
	}

	/* Run diff */
	FUNC11(cmd, sizeof(cmd),
			 "diff %s \"%s\" \"%s\" >> \"%s\"",
			 pretty_diff_opts, best_expect_file, resultsfile, difffilename);
	FUNC10(cmd, difffilename);

	FUNC16(diff);
	return true;
}