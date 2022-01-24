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
typedef  int /*<<< orphan*/  text ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ROLE_READ_SERVER_FILES ; 
 char* DataDir ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* Log_directory ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC11(text *arg)
{
	char	   *filename;

	filename = FUNC10(arg);
	FUNC1(filename);	/* filename can change length here */

	/*
	 * Members of the 'pg_read_server_files' role are allowed to access any
	 * files on the server as the PG user, so no need to do any further checks
	 * here.
	 */
	if (FUNC6(FUNC0(), DEFAULT_ROLE_READ_SERVER_FILES))
		return filename;

	/* User isn't a member of the default role, so check if it's allowable */
	if (FUNC5(filename))
	{
		/* Disallow '/a/b/data/..' */
		if (FUNC7(filename))
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 (FUNC4("reference to parent directory (\"..\") not allowed"))));

		/*
		 * Allow absolute paths if within DataDir or Log_directory, even
		 * though Log_directory might be outside DataDir.
		 */
		if (!FUNC8(DataDir, filename) &&
			(!FUNC5(Log_directory) ||
			 !FUNC8(Log_directory, filename)))
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 (FUNC4("absolute path not allowed"))));
	}
	else if (!FUNC9(filename))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 (FUNC4("path must be in or below the current directory"))));

	return filename;
}