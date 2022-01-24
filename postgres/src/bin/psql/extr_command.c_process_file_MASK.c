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
typedef  int /*<<< orphan*/  relpath ;
struct TYPE_2__ {char* inputfile; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int MAXPGPATH ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PG_BINARY_R ; 
 int /*<<< orphan*/  PG_LOG_FLAG_TERSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

int
FUNC12(char *filename, bool use_relative_path)
{
	FILE	   *fd;
	int			result;
	char	   *oldfilename;
	char		relpath[MAXPGPATH];

	if (!filename)
	{
		fd = stdin;
		filename = NULL;
	}
	else if (FUNC10(filename, "-") != 0)
	{
		FUNC1(filename);

		/*
		 * If we were asked to resolve the pathname relative to the location
		 * of the currently executing script, and there is one, and this is a
		 * relative pathname, then prepend all but the last pathname component
		 * of the current script to this pathname.
		 */
		if (use_relative_path && pset.inputfile &&
			!FUNC6(filename) && !FUNC5(filename))
		{
			FUNC11(relpath, pset.inputfile, sizeof(relpath));
			FUNC4(relpath);
			FUNC7(relpath, relpath, filename);
			FUNC1(relpath);

			filename = relpath;
		}

		fd = FUNC3(filename, PG_BINARY_R);

		if (!fd)
		{
			FUNC8("%s: %m", filename);
			return EXIT_FAILURE;
		}
	}
	else
	{
		fd = stdin;
		filename = "<stdin>";	/* for future error messages */
	}

	oldfilename = pset.inputfile;
	pset.inputfile = filename;

	FUNC9(pset.inputfile ? 0 : PG_LOG_FLAG_TERSE);

	result = FUNC0(fd);

	if (fd != stdin)
		FUNC2(fd);

	pset.inputfile = oldfilename;

	FUNC9(pset.inputfile ? 0 : PG_LOG_FLAG_TERSE);

	return result;
}