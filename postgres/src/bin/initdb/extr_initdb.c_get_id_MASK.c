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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static char *
FUNC7(void)
{
	const char *username;

#ifndef WIN32
	if (FUNC4() == 0)			/* 0 is root's uid */
	{
		FUNC5("cannot be run as root");
		FUNC2(stderr,
				"%s", FUNC0("Please log in (using, e.g., \"su\") as the (unprivileged) user that will\n"
				  "own the server process.\n"));
		FUNC1(1);
	}
#endif

	username = FUNC3(progname);

	return FUNC6(username);
}