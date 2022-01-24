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
typedef  int /*<<< orphan*/  tzbuf ;
typedef  int /*<<< orphan*/  tzEntry ;
typedef  int /*<<< orphan*/  file_path ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  WHITESPACE ; 
 int FUNC6 (int /*<<< orphan*/ **,int*,int,int /*<<< orphan*/ *,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char) ; 
 scalar_t__ FUNC12 (unsigned char) ; 
 int /*<<< orphan*/  my_exec_path ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char const*,int,char*,int /*<<< orphan*/ *) ; 
 int FUNC17 (char*) ; 
 char* FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(const char *filename, int depth,
			tzEntry **base, int *arraysize, int n)
{
	char		share_path[MAXPGPATH];
	char		file_path[MAXPGPATH];
	FILE	   *tzFile;
	char		tzbuf[1024];
	char	   *line;
	tzEntry		tzentry;
	int			lineno = 0;
	bool		override = false;
	const char *p;

	/*
	 * We enforce that the filename is all alpha characters.  This may be
	 * overly restrictive, but we don't want to allow access to anything
	 * outside the timezonesets directory, so for instance '/' *must* be
	 * rejected.
	 */
	for (p = filename; *p; p++)
	{
		if (!FUNC11((unsigned char) *p))
		{
			/* at level 0, just use guc.c's regular "invalid value" message */
			if (depth > 0)
				FUNC5("invalid time zone file name \"%s\"",
								 filename);
			return -1;
		}
	}

	/*
	 * The maximal recursion depth is a pretty arbitrary setting. It is hard
	 * to imagine that someone needs more than 3 levels so stick with this
	 * conservative setting until someone complains.
	 */
	if (depth > 3)
	{
		FUNC5("time zone file recursion limit exceeded in file \"%s\"",
						 filename);
		return -1;
	}

	FUNC10(my_exec_path, share_path);
	FUNC15(file_path, sizeof(file_path), "%s/timezonesets/%s",
			 share_path, filename);
	tzFile = FUNC1(file_path, "r");
	if (!tzFile)
	{
		/*
		 * Check to see if the problem is not the filename but the directory.
		 * This is worth troubling over because if the installation share/
		 * directory is missing or unreadable, this is likely to be the first
		 * place we notice a problem during postmaster startup.
		 */
		int			save_errno = errno;
		DIR		   *tzdir;

		FUNC15(file_path, sizeof(file_path), "%s/timezonesets",
				 share_path);
		tzdir = FUNC0(file_path);
		if (tzdir == NULL)
		{
			FUNC5("could not open directory \"%s\": %m",
							 file_path);
			FUNC4("This may indicate an incomplete PostgreSQL installation, or that the file \"%s\" has been moved away from its proper location.",
							  my_exec_path);
			return -1;
		}
		FUNC2(tzdir);
		errno = save_errno;

		/*
		 * otherwise, if file doesn't exist and it's level 0, guc.c's
		 * complaint is enough
		 */
		if (errno != ENOENT || depth > 0)
			FUNC5("could not read time zone file \"%s\": %m",
							 filename);

		return -1;
	}

	while (!FUNC7(tzFile))
	{
		lineno++;
		if (FUNC9(tzbuf, sizeof(tzbuf), tzFile) == NULL)
		{
			if (FUNC8(tzFile))
			{
				FUNC5("could not read time zone file \"%s\": %m",
								 filename);
				return -1;
			}
			/* else we're at EOF after all */
			break;
		}
		if (FUNC17(tzbuf) == sizeof(tzbuf) - 1)
		{
			/* the line is too long for tzbuf */
			FUNC5("line is too long in time zone file \"%s\", line %d",
							 filename, lineno);
			return -1;
		}

		/* skip over whitespace */
		line = tzbuf;
		while (*line && FUNC12((unsigned char) *line))
			line++;

		if (*line == '\0')		/* empty line */
			continue;
		if (*line == '#')		/* comment line */
			continue;

		if (FUNC13(line, "@INCLUDE", FUNC17("@INCLUDE")) == 0)
		{
			/* pstrdup so we can use filename in result data structure */
			char	   *includeFile = FUNC14(line + FUNC17("@INCLUDE"));

			includeFile = FUNC18(includeFile, WHITESPACE);
			if (!includeFile || !*includeFile)
			{
				FUNC5("@INCLUDE without file name in time zone file \"%s\", line %d",
								 filename, lineno);
				return -1;
			}
			n = FUNC20(includeFile, depth + 1,
							base, arraysize, n);
			if (n < 0)
				return -1;
			continue;
		}

		if (FUNC13(line, "@OVERRIDE", FUNC17("@OVERRIDE")) == 0)
		{
			override = true;
			continue;
		}

		if (!FUNC16(filename, lineno, line, &tzentry))
			return -1;
		if (!FUNC19(&tzentry))
			return -1;
		n = FUNC6(base, arraysize, n, &tzentry, override);
		if (n < 0)
			return -1;
	}

	FUNC3(tzFile);

	return n;
}