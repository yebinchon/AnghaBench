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
 int EEXIST ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  MKDIR_UMASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  progname ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(char const *argname, bool ancestors)
{
	char	   *name;
	char	   *cp;

	cp = name = FUNC1(argname);

	/*
	 * On MS-Windows systems, do not worry about drive letters or backslashes,
	 * as this should suffice in practice.  Time zone names do not use drive
	 * letters and backslashes.  If the -d option of zic does not name an
	 * already-existing directory, it can use slashes to separate the
	 * already-existing ancestor prefix from the to-be-created subdirectories.
	 */

	/* Do not mkdir a root directory, as it must exist.  */
	while (*cp == '/')
		cp++;

	while (cp && ((cp = FUNC7(cp, '/')) || !ancestors))
	{
		if (cp)
			*cp = '\0';

		/*
		 * Try to create it.  It's OK if creation fails because the directory
		 * already exists, perhaps because some other process just created it.
		 * For simplicity do not check first whether it already exists, as
		 * that is checked anyway if the mkdir fails.
		 */
		if (FUNC6(name, MKDIR_UMASK) != 0)
		{
			/*
			 * For speed, skip itsdir if errno == EEXIST.  Since mkdirs is
			 * called only after open fails with ENOENT on a subfile, EEXIST
			 * implies itsdir here.
			 */
			int			err = errno;

			if (err != EEXIST && !FUNC5(name))
			{
				FUNC2(FUNC0("%s: Cannot create directory %s: %s"),
					  progname, name, FUNC8(err));
				FUNC3(EXIT_FAILURE);
			}
		}
		if (cp)
			*cp++ = '/';
	}
	FUNC4(name);
}