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
 int EACCES ; 
 int EBADF ; 
 int EINVAL ; 
 int EISDIR ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int FUNC1 (char const*,int) ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int errno ; 
 int FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(const char *fname, bool isdir, bool ignore_perm, int elevel)
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

	fd = FUNC1(fname, flags);

	/*
	 * Some OSs don't allow us to open directories at all (Windows returns
	 * EACCES), just ignore the error in that case.  If desired also silently
	 * ignoring errors about unreadable files. Log others.
	 */
	if (fd < 0 && isdir && (errno == EISDIR || errno == EACCES))
		return 0;
	else if (fd < 0 && ignore_perm && errno == EACCES)
		return 0;
	else if (fd < 0)
	{
		FUNC2(elevel,
				(FUNC3(),
				 FUNC4("could not open file \"%s\": %m", fname)));
		return -1;
	}

	returncode = FUNC5(fd);

	/*
	 * Some OSes don't allow us to fsync directories at all, so we can ignore
	 * those errors. Anything else needs to be logged.
	 */
	if (returncode != 0 && !(isdir && (errno == EBADF || errno == EINVAL)))
	{
		int			save_errno;

		/* close file upon error, might not be in transaction context */
		save_errno = errno;
		(void) FUNC0(fd);
		errno = save_errno;

		FUNC2(elevel,
				(FUNC3(),
				 FUNC4("could not fsync file \"%s\": %m", fname)));
		return -1;
	}

	if (FUNC0(fd) != 0)
	{
		FUNC2(elevel,
				(FUNC3(),
				 FUNC4("could not close file \"%s\": %m", fname)));
		return -1;
	}

	return 0;
}