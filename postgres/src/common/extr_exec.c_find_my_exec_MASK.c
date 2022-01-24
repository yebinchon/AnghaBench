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
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FILE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int MAXPGPATH ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC13 (char*) ; 
 int FUNC14 (char*) ; 
 int FUNC15 (char*) ; 

int
FUNC16(const char *argv0, char *retpath)
{
	char		cwd[MAXPGPATH],
				test_path[MAXPGPATH];
	char	   *path;

	if (!FUNC8(cwd, MAXPGPATH))
	{
		FUNC12(FUNC5(),
				  FUNC2("could not identify current directory: %m"));
		return -1;
	}

	/*
	 * If argv0 contains a separator, then PATH wasn't used.
	 */
	if (FUNC6(argv0) != NULL)
	{
		if (FUNC10(argv0))
			FUNC1(retpath, argv0, MAXPGPATH);
		else
			FUNC11(retpath, cwd, argv0);
		FUNC3(retpath);

		if (FUNC15(retpath) == 0)
			return FUNC13(retpath);

		FUNC12(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
				  FUNC2("invalid binary \"%s\""), retpath);
		return -1;
	}

#ifdef WIN32
	/* Win32 checks the current directory first for names without slashes */
	join_path_components(retpath, cwd, argv0);
	if (validate_exec(retpath) == 0)
		return resolve_symlinks(retpath);
#endif

	/*
	 * Since no explicit path was supplied, the user must have been relying on
	 * PATH.  We'll search the same PATH.
	 */
	if ((path = FUNC9("PATH")) && *path)
	{
		char	   *startp = NULL,
				   *endp = NULL;

		do
		{
			if (!startp)
				startp = path;
			else
				startp = endp + 1;

			endp = FUNC7(startp);
			if (!endp)
				endp = startp + FUNC14(startp); /* point to end */

			FUNC1(test_path, startp, FUNC0(endp - startp + 1, MAXPGPATH));

			if (FUNC10(test_path))
				FUNC11(retpath, test_path, argv0);
			else
			{
				FUNC11(retpath, cwd, test_path);
				FUNC11(retpath, retpath, argv0);
			}
			FUNC3(retpath);

			switch (FUNC15(retpath))
			{
				case 0:			/* found ok */
					return FUNC13(retpath);
				case -1:		/* wasn't even a candidate, keep looking */
					break;
				case -2:		/* found but disqualified */
					FUNC12(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
							  FUNC2("could not read binary \"%s\""),
							  retpath);
					break;
			}
		} while (*endp);
	}

	FUNC12(FUNC4(ERRCODE_UNDEFINED_FILE),
			  FUNC2("could not find a \"%s\" to execute"), argv0);
	return -1;
}