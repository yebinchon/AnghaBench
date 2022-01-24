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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int
FUNC7(const char *cmd, const char *filename)
{
	int			r;

	r = FUNC6(cmd);
	if (!FUNC1(r) || FUNC0(r) > 1)
	{
		FUNC5(stderr, FUNC2("diff command failed with status %d: %s\n"), r, cmd);
		FUNC3(2);
	}
#ifdef WIN32

	/*
	 * On WIN32, if the 'diff' command cannot be found, system() returns 1,
	 * but produces nothing to stdout, so we check for that here.
	 */
	if (WEXITSTATUS(r) == 1 && file_size(filename) <= 0)
	{
		fprintf(stderr, _("diff command not found: %s\n"), cmd);
		exit(2);
	}
#endif

	return FUNC0(r);
}