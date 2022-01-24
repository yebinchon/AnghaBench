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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int BLCKSZ ; 
 int /*<<< orphan*/  DIRECTORY_LOCK_FILE ; 
#define  ENOENT 129 
#define  ENOTDIR 128 
 int /*<<< orphan*/  LOG ; 
 int O_RDWR ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  WAIT_EVENT_LOCK_FILE_RECHECKDATADIR_READ ; 
 long FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int errno ; 
 long FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char*,int) ; 

bool
FUNC10(void)
{
	int			fd;
	int			len;
	long		file_pid;
	char		buffer[BLCKSZ];

	fd = FUNC6(DIRECTORY_LOCK_FILE, O_RDWR | PG_BINARY, 0);
	if (fd < 0)
	{
		/*
		 * There are many foreseeable false-positive error conditions.  For
		 * safety, fail only on enumerated clearly-something-is-wrong
		 * conditions.
		 */
		switch (errno)
		{
			case ENOENT:
			case ENOTDIR:
				/* disaster */
				FUNC2(LOG,
						(FUNC3(),
						 FUNC4("could not open file \"%s\": %m",
								DIRECTORY_LOCK_FILE)));
				return false;
			default:
				/* non-fatal, at least for now */
				FUNC2(LOG,
						(FUNC3(),
						 FUNC4("could not open file \"%s\": %m; continuing anyway",
								DIRECTORY_LOCK_FILE)));
				return true;
		}
	}
	FUNC8(WAIT_EVENT_LOCK_FILE_RECHECKDATADIR_READ);
	len = FUNC9(fd, buffer, sizeof(buffer) - 1);
	FUNC7();
	if (len < 0)
	{
		FUNC2(LOG,
				(FUNC3(),
				 FUNC4("could not read from file \"%s\": %m",
						DIRECTORY_LOCK_FILE)));
		FUNC1(fd);
		return true;			/* treat read failure as nonfatal */
	}
	buffer[len] = '\0';
	FUNC1(fd);
	file_pid = FUNC0(buffer);
	if (file_pid == FUNC5())
		return true;			/* all is well */

	/* Trouble: someone's overwritten the lock file */
	FUNC2(LOG,
			(FUNC4("lock file \"%s\" contains wrong PID: %ld instead of %ld",
					DIRECTORY_LOCK_FILE, file_pid, (long) FUNC5())));
	return false;
}