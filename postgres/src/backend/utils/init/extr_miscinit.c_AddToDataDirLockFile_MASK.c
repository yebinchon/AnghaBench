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
typedef  int /*<<< orphan*/  srcbuffer ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  destbuffer ;

/* Variables and functions */
 int BLCKSZ ; 
 int /*<<< orphan*/  DIRECTORY_LOCK_FILE ; 
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  LOG ; 
 int O_RDWR ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  WAIT_EVENT_LOCK_FILE_ADDTODATADIR_READ ; 
 int /*<<< orphan*/  WAIT_EVENT_LOCK_FILE_ADDTODATADIR_SYNC ; 
 int /*<<< orphan*/  WAIT_EVENT_LOCK_FILE_ADDTODATADIR_WRITE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char const*) ; 
 char* FUNC12 (char*,char) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int,char*,int) ; 

void
FUNC15(int target_line, const char *str)
{
	int			fd;
	int			len;
	int			lineno;
	char	   *srcptr;
	char	   *destptr;
	char		srcbuffer[BLCKSZ];
	char		destbuffer[BLCKSZ];

	fd = FUNC6(DIRECTORY_LOCK_FILE, O_RDWR | PG_BINARY, 0);
	if (fd < 0)
	{
		FUNC1(LOG,
				(FUNC2(),
				 FUNC3("could not open file \"%s\": %m",
						DIRECTORY_LOCK_FILE)));
		return;
	}
	FUNC9(WAIT_EVENT_LOCK_FILE_ADDTODATADIR_READ);
	len = FUNC10(fd, srcbuffer, sizeof(srcbuffer) - 1);
	FUNC8();
	if (len < 0)
	{
		FUNC1(LOG,
				(FUNC2(),
				 FUNC3("could not read from file \"%s\": %m",
						DIRECTORY_LOCK_FILE)));
		FUNC0(fd);
		return;
	}
	srcbuffer[len] = '\0';

	/*
	 * Advance over lines we are not supposed to rewrite, then copy them to
	 * destbuffer.
	 */
	srcptr = srcbuffer;
	for (lineno = 1; lineno < target_line; lineno++)
	{
		char	   *eol = FUNC12(srcptr, '\n');

		if (eol == NULL)
			break;				/* not enough lines in file yet */
		srcptr = eol + 1;
	}
	FUNC5(destbuffer, srcbuffer, srcptr - srcbuffer);
	destptr = destbuffer + (srcptr - srcbuffer);

	/*
	 * Fill in any missing lines before the target line, in case lines are
	 * added to the file out of order.
	 */
	for (; lineno < target_line; lineno++)
	{
		if (destptr < destbuffer + sizeof(destbuffer))
			*destptr++ = '\n';
	}

	/*
	 * Write or rewrite the target line.
	 */
	FUNC11(destptr, destbuffer + sizeof(destbuffer) - destptr, "%s\n", str);
	destptr += FUNC13(destptr);

	/*
	 * If there are more lines in the old file, append them to destbuffer.
	 */
	if ((srcptr = FUNC12(srcptr, '\n')) != NULL)
	{
		srcptr++;
		FUNC11(destptr, destbuffer + sizeof(destbuffer) - destptr, "%s",
				 srcptr);
	}

	/*
	 * And rewrite the data.  Since we write in a single kernel call, this
	 * update should appear atomic to onlookers.
	 */
	len = FUNC13(destbuffer);
	errno = 0;
	FUNC9(WAIT_EVENT_LOCK_FILE_ADDTODATADIR_WRITE);
	if (FUNC4(fd, (off_t) 0, SEEK_SET) != 0 ||
		(int) FUNC14(fd, destbuffer, len) != len)
	{
		FUNC8();
		/* if write didn't set errno, assume problem is no disk space */
		if (errno == 0)
			errno = ENOSPC;
		FUNC1(LOG,
				(FUNC2(),
				 FUNC3("could not write to file \"%s\": %m",
						DIRECTORY_LOCK_FILE)));
		FUNC0(fd);
		return;
	}
	FUNC8();
	FUNC9(WAIT_EVENT_LOCK_FILE_ADDTODATADIR_SYNC);
	if (FUNC7(fd) != 0)
	{
		FUNC1(LOG,
				(FUNC2(),
				 FUNC3("could not write to file \"%s\": %m",
						DIRECTORY_LOCK_FILE)));
	}
	FUNC8();
	if (FUNC0(fd) != 0)
	{
		FUNC1(LOG,
				(FUNC2(),
				 FUNC3("could not write to file \"%s\": %m",
						DIRECTORY_LOCK_FILE)));
	}
}