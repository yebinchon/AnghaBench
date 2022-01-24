#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sebuf ;
struct TYPE_6__ {int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  INV_READ ; 
 int LO_BUFSIZE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PG_BINARY ; 
 int PG_STRERROR_R_BUFLEN ; 
 scalar_t__ FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,char*,int) ; 
 int FUNC5 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int FUNC8 (int,char*,int) ; 

int
FUNC9(PGconn *conn, Oid lobjId, const char *filename)
{
	int			result = 1;
	int			fd;
	int			nbytes,
				tmp;
	char		buf[LO_BUFSIZE];
	int			lobj;
	char		sebuf[PG_STRERROR_R_BUFLEN];

	/*
	 * open the large object.
	 */
	lobj = FUNC3(conn, lobjId, INV_READ);
	if (lobj == -1)
	{
		/* we assume lo_open() already set a suitable error message */
		return -1;
	}

	/*
	 * create the file to be written to
	 */
	fd = FUNC5(filename, O_CREAT | O_WRONLY | O_TRUNC | PG_BINARY, 0666);
	if (fd < 0)
	{
		/* We must do lo_close before setting the errorMessage */
		int			save_errno = errno;

		(void) FUNC2(conn, lobj);
		FUNC6(&conn->errorMessage,
						  FUNC1("could not open file \"%s\": %s\n"),
						  filename,
						  FUNC7(save_errno, sebuf, sizeof(sebuf)));
		return -1;
	}

	/*
	 * read in from the large object and write to the file
	 */
	while ((nbytes = FUNC4(conn, lobj, buf, LO_BUFSIZE)) > 0)
	{
		tmp = FUNC8(fd, buf, nbytes);
		if (tmp != nbytes)
		{
			/* We must do lo_close before setting the errorMessage */
			int			save_errno = errno;

			(void) FUNC2(conn, lobj);
			(void) FUNC0(fd);
			FUNC6(&conn->errorMessage,
							  FUNC1("could not write to file \"%s\": %s\n"),
							  filename,
							  FUNC7(save_errno, sebuf, sizeof(sebuf)));
			return -1;
		}
	}

	/*
	 * If lo_read() failed, we are now in an aborted transaction so there's no
	 * need for lo_close(); furthermore, if we tried it we'd overwrite the
	 * useful error result with a useless one. So skip lo_close() if we got a
	 * failure result.
	 */
	if (nbytes < 0 ||
		FUNC2(conn, lobj) != 0)
	{
		/* assume lo_read() or lo_close() left a suitable error message */
		result = -1;
	}

	/* if we already failed, don't overwrite that msg with a close error */
	if (FUNC0(fd) != 0 && result >= 0)
	{
		FUNC6(&conn->errorMessage,
						  FUNC1("could not write to file \"%s\": %s\n"),
						  filename, FUNC7(errno, sebuf, sizeof(sebuf)));
		result = -1;
	}

	return result;
}