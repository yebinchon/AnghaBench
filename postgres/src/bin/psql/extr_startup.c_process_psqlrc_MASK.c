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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int MAXPGPATH ; 
 char* PSQLRC ; 
 char* SYSPSQLRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(char *argv0)
{
	char		home[MAXPGPATH];
	char		rc_file[MAXPGPATH];
	char		my_exec_path[MAXPGPATH];
	char		etc_path[MAXPGPATH];
	char	   *envrc = FUNC5("PSQLRC");

	if (FUNC2(argv0, my_exec_path) < 0)
	{
		FUNC6("could not find own program executable");
		FUNC0(EXIT_FAILURE);
	}

	FUNC3(my_exec_path, etc_path);

	FUNC9(rc_file, MAXPGPATH, "%s/%s", etc_path, SYSPSQLRC);
	FUNC7(rc_file);

	if (envrc != NULL && FUNC10(envrc) > 0)
	{
		/* might need to free() this */
		char	   *envrc_alloc = FUNC8(envrc);

		FUNC1(&envrc_alloc);
		FUNC7(envrc_alloc);
	}
	else if (FUNC4(home))
	{
		FUNC9(rc_file, MAXPGPATH, "%s/%s", home, PSQLRC);
		FUNC7(rc_file);
	}
}