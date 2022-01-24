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
typedef  int /*<<< orphan*/  full_path ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_BACKEND_VERSIONSTR ; 
 int /*<<< orphan*/  backend_exec ; 
 scalar_t__ bin_path ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  progname ; 
 scalar_t__ share_path ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC11(const char *argv0)
{
	int			ret;

	if ((ret = FUNC3(argv0, "postgres", PG_BACKEND_VERSIONSTR,
							   backend_exec)) < 0)
	{
		char		full_path[MAXPGPATH];

		if (FUNC2(argv0, full_path) < 0)
			FUNC10(full_path, progname, sizeof(full_path));

		if (ret == -1)
			FUNC7("The program \"postgres\" is needed by %s but was not found in the\n"
						 "same directory as \"%s\".\n"
						 "Check your installation.",
						 progname, full_path);
		else
			FUNC7("The program \"postgres\" was found by \"%s\"\n"
						 "but was not the same version as %s.\n"
						 "Check your installation.",
						 full_path, progname);
		FUNC1(1);
	}

	/* store binary directory */
	FUNC9(bin_path, backend_exec);
	*FUNC6(bin_path) = '\0';
	FUNC0(bin_path);

	if (!share_path)
	{
		share_path = FUNC8(MAXPGPATH);
		FUNC4(backend_exec, share_path);
	}
	else if (!FUNC5(share_path))
	{
		FUNC7("input file location must be an absolute path");
		FUNC1(1);
	}

	FUNC0(share_path);
}