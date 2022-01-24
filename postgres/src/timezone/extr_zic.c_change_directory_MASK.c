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
 int ENOENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(char const *dir)
{
	if (FUNC1(dir) != 0)
	{
		int			chdir_errno = errno;

		if (chdir_errno == ENOENT)
		{
			FUNC4(dir, false);
			chdir_errno = FUNC1(dir) == 0 ? 0 : errno;
		}
		if (chdir_errno != 0)
		{
			FUNC3(stderr, FUNC0("%s: Can't chdir to %s: %s\n"),
					progname, dir, FUNC5(chdir_errno));
			FUNC2(EXIT_FAILURE);
		}
	}
}