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
 scalar_t__ ENOENT ; 
 int O_RDWR ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

int
FUNC7(const char *oldfile, const char *newfile)
{
	int			fd;

	/*
	 * First fsync the old and target path (if it exists), to ensure that they
	 * are properly persistent on disk. Syncing the target file is not
	 * strictly necessary, but it makes it easier to reason about crashes;
	 * because it's then guaranteed that either source or target file exists
	 * after a crash.
	 */
	if (FUNC2(oldfile, false) != 0)
		return -1;

	fd = FUNC4(newfile, PG_BINARY | O_RDWR, 0);
	if (fd < 0)
	{
		if (errno != ENOENT)
		{
			FUNC5("could not open file \"%s\": %m", newfile);
			return -1;
		}
	}
	else
	{
		if (FUNC1(fd) != 0)
		{
			FUNC5("could not fsync file \"%s\": %m", newfile);
			FUNC0(fd);
			return -1;
		}
		FUNC0(fd);
	}

	/* Time to do the real deal... */
	if (FUNC6(oldfile, newfile) != 0)
	{
		FUNC5("could not rename file \"%s\" to \"%s\": %m",
					 oldfile, newfile);
		return -1;
	}

	/*
	 * To guarantee renaming the file is persistent, fsync the file with its
	 * new name, and its containing directory.
	 */
	if (FUNC2(newfile, false) != 0)
		return -1;

	if (FUNC3(newfile) != 0)
		return -1;

	return 0;
}