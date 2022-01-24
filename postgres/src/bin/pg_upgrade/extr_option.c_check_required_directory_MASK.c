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
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(char **dirpath, const char *envVarName, bool useCwd,
						 const char *cmdLineOption, const char *description,
						 bool missingOk)
{
	if (*dirpath == NULL || FUNC5(*dirpath) == 0)
	{
		const char *envVar;

		if ((envVar = FUNC2(envVarName)) && FUNC5(envVar))
			*dirpath = FUNC4(envVar);
		else if (useCwd)
		{
			char		cwd[MAXPGPATH];

			if (!FUNC1(cwd, MAXPGPATH))
				FUNC3("could not determine current directory\n");
			*dirpath = FUNC4(cwd);
		}
		else if (missingOk)
			return;
		else
			FUNC3("You must identify the directory where the %s.\n"
					 "Please use the %s command-line option or the %s environment variable.\n",
					 description, cmdLineOption, envVarName);
	}

	/*
	 * Clean up the path, in particular trimming any trailing path separators,
	 * because we construct paths by appending to this path.
	 */
	FUNC0(*dirpath);
}