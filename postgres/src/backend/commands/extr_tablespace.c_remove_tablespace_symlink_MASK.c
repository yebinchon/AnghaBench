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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC6 (char const*,struct stat*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 

void
FUNC9(const char *linkloc)
{
	struct stat st;

	if (FUNC6(linkloc, &st) < 0)
	{
		if (errno == ENOENT)
			return;
		FUNC2(ERROR,
				(FUNC4(),
				 FUNC5("could not stat file \"%s\": %m", linkloc)));
	}

	if (FUNC0(st.st_mode))
	{
		/*
		 * This will fail if the directory isn't empty, but not if it's a
		 * junction point.
		 */
		if (FUNC7(linkloc) < 0 && errno != ENOENT)
			FUNC2(ERROR,
					(FUNC4(),
					 FUNC5("could not remove directory \"%s\": %m",
							linkloc)));
	}
#ifdef S_ISLNK
	else if (S_ISLNK(st.st_mode))
	{
		if (unlink(linkloc) < 0 && errno != ENOENT)
			ereport(ERROR,
					(errcode_for_file_access(),
					 errmsg("could not remove symbolic link \"%s\": %m",
							linkloc)));
	}
#endif
	else
	{
		/* Refuse to remove anything that's not a directory or symlink */
		FUNC2(ERROR,
				(FUNC3(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC5("\"%s\" is not a directory or symbolic link",
						linkloc)));
	}
}