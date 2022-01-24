#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sebuf ;
struct TYPE_8__ {int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int INV_READ ; 
 int INV_WRITE ; 
 scalar_t__ InvalidOid ; 
 int LO_BUFSIZE ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 int PG_STRERROR_R_BUFLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC6 (TYPE_1__*,int,char*,int) ; 
 int FUNC7 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 

__attribute__((used)) static Oid
FUNC11(PGconn *conn, const char *filename, Oid oid)
{
	int			fd;
	int			nbytes,
				tmp;
	char		buf[LO_BUFSIZE];
	Oid			lobjOid;
	int			lobj;
	char		sebuf[PG_STRERROR_R_BUFLEN];

	/*
	 * open the file to be read in
	 */
	fd = FUNC7(filename, O_RDONLY | PG_BINARY, 0666);
	if (fd < 0)
	{							/* error */
		FUNC8(&conn->errorMessage,
						  FUNC1("could not open file \"%s\": %s\n"),
						  filename, FUNC10(errno, sebuf, sizeof(sebuf)));
		return InvalidOid;
	}

	/*
	 * create an inversion object
	 */
	if (oid == InvalidOid)
		lobjOid = FUNC3(conn, INV_READ | INV_WRITE);
	else
		lobjOid = FUNC4(conn, oid);

	if (lobjOid == InvalidOid)
	{
		/* we assume lo_create() already set a suitable error message */
		(void) FUNC0(fd);
		return InvalidOid;
	}

	lobj = FUNC5(conn, lobjOid, INV_WRITE);
	if (lobj == -1)
	{
		/* we assume lo_open() already set a suitable error message */
		(void) FUNC0(fd);
		return InvalidOid;
	}

	/*
	 * read in from the file and write to the large object
	 */
	while ((nbytes = FUNC9(fd, buf, LO_BUFSIZE)) > 0)
	{
		tmp = FUNC6(conn, lobj, buf, nbytes);
		if (tmp != nbytes)
		{
			/*
			 * If lo_write() failed, we are now in an aborted transaction so
			 * there's no need for lo_close(); furthermore, if we tried it
			 * we'd overwrite the useful error result with a useless one. So
			 * just nail the doors shut and get out of town.
			 */
			(void) FUNC0(fd);
			return InvalidOid;
		}
	}

	if (nbytes < 0)
	{
		/* We must do lo_close before setting the errorMessage */
		int			save_errno = errno;

		(void) FUNC2(conn, lobj);
		(void) FUNC0(fd);
		FUNC8(&conn->errorMessage,
						  FUNC1("could not read from file \"%s\": %s\n"),
						  filename,
						  FUNC10(save_errno, sebuf, sizeof(sebuf)));
		return InvalidOid;
	}

	(void) FUNC0(fd);

	if (FUNC2(conn, lobj) != 0)
	{
		/* we assume lo_close() already set a suitable error message */
		return InvalidOid;
	}

	return lobjOid;
}