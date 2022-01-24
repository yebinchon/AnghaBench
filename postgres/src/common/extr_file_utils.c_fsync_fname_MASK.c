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
 scalar_t__ EACCES ; 
 scalar_t__ EBADF ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EISDIR ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (int) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

int
FUNC4(const char *fname, bool isdir)
{
	int			fd;
	int			flags;
	int			returncode;

	/*
	 * Some OSs require directories to be opened read-only whereas other
	 * systems don't allow us to fsync files opened read-only; so we need both
	 * cases here.  Using O_RDWR will cause us to fail to fsync files that are
	 * not writable by our userid, but we assume that's OK.
	 */
	flags = PG_BINARY;
	if (!isdir)
		flags |= O_RDWR;
	else
		flags |= O_RDONLY;

	/*
	 * Open the file, silently ignoring errors about unreadable files (or
	 * unsupported operations, e.g. opening a directory under Windows), and
	 * logging others.
	 */
	fd = FUNC2(fname, flags, 0);
	if (fd < 0)
	{
		if (errno == EACCES || (isdir && errno == EISDIR))
			return 0;
		FUNC3("could not open file \"%s\": %m", fname);
		return -1;
	}

	returncode = FUNC1(fd);

	/*
	 * Some OSes don't allow us to fsync directories at all, so we can ignore
	 * those errors. Anything else needs to be reported.
	 */
	if (returncode != 0 && !(isdir && (errno == EBADF || errno == EINVAL)))
	{
		FUNC3("could not fsync file \"%s\": %m", fname);
		(void) FUNC0(fd);
		return -1;
	}

	(void) FUNC0(fd);
	return 0;
}