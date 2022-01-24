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
typedef  int /*<<< orphan*/  PGconn ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int BUFSIZE ; 
 int INV_READ ; 
 int INV_WRITE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static Oid
FUNC8(PGconn *conn, char *filename)
{
	Oid			lobjId;
	int			lobj_fd;
	char		buf[BUFSIZE];
	int			nbytes,
				tmp;
	int			fd;

	/*
	 * open the file to be read in
	 */
	fd = FUNC6(filename, O_RDONLY, 0666);
	if (fd < 0)
	{							/* error */
		FUNC1(stderr, "cannot open unix file\"%s\"\n", filename);
	}

	/*
	 * create the large object
	 */
	lobjId = FUNC3(conn, INV_READ | INV_WRITE);
	if (lobjId == 0)
		FUNC1(stderr, "cannot create large object");

	lobj_fd = FUNC4(conn, lobjId, INV_WRITE);

	/*
	 * read in from the Unix file and write to the inversion file
	 */
	while ((nbytes = FUNC7(fd, buf, BUFSIZE)) > 0)
	{
		tmp = FUNC5(conn, lobj_fd, buf, nbytes);
		if (tmp < nbytes)
			FUNC1(stderr, "error while reading \"%s\"", filename);
	}

	FUNC0(fd);
	FUNC2(conn, lobj_fd);

	return lobjId;
}