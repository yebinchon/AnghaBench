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
 scalar_t__ FUNC0 (int) ; 
 int ENOENT ; 
 int O_RDWR ; 
 int FUNC1 (char const*,int) ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int errno ; 
 scalar_t__ FUNC5 (char const*,int,int,int) ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 

int
FUNC9(const char *oldfile, const char *newfile, int elevel)
{
	int			fd;

	/*
	 * First fsync the old and target path (if it exists), to ensure that they
	 * are properly persistent on disk. Syncing the target file is not
	 * strictly necessary, but it makes it easier to reason about crashes;
	 * because it's then guaranteed that either source or target file exists
	 * after a crash.
	 */
	if (FUNC5(oldfile, false, false, elevel) != 0)
		return -1;

	fd = FUNC1(newfile, PG_BINARY | O_RDWR);
	if (fd < 0)
	{
		if (errno != ENOENT)
		{
			FUNC2(elevel,
					(FUNC3(),
					 FUNC4("could not open file \"%s\": %m", newfile)));
			return -1;
		}
	}
	else
	{
		if (FUNC7(fd) != 0)
		{
			int			save_errno;

			/* close file upon error, might not be in transaction context */
			save_errno = errno;
			FUNC0(fd);
			errno = save_errno;

			FUNC2(elevel,
					(FUNC3(),
					 FUNC4("could not fsync file \"%s\": %m", newfile)));
			return -1;
		}

		if (FUNC0(fd) != 0)
		{
			FUNC2(elevel,
					(FUNC3(),
					 FUNC4("could not close file \"%s\": %m", newfile)));
			return -1;
		}
	}

	/* Time to do the real deal... */
	if (FUNC8(oldfile, newfile) < 0)
	{
		FUNC2(elevel,
				(FUNC3(),
				 FUNC4("could not rename file \"%s\" to \"%s\": %m",
						oldfile, newfile)));
		return -1;
	}

	/*
	 * To guarantee renaming the file is persistent, fsync the file with its
	 * new name, and its containing directory.
	 */
	if (FUNC5(newfile, false, false, elevel) != 0)
		return -1;

	if (FUNC6(newfile, elevel) != 0)
		return -1;

	return 0;
}