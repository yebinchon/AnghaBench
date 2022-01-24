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
typedef  int Oid ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  INV_READ ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char*,int) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static void
FUNC7(PGconn *conn, Oid lobjId, char *filename)
{
	int			lobj_fd;
	char		buf[BUFSIZE];
	int			nbytes,
				tmp;
	int			fd;

	/*
	 * open the large object
	 */
	lobj_fd = FUNC3(conn, lobjId, INV_READ);
	if (lobj_fd < 0)
		FUNC1(stderr, "cannot open large object %u", lobjId);

	/*
	 * open the file to be written to
	 */
	fd = FUNC5(filename, O_CREAT | O_WRONLY | O_TRUNC, 0666);
	if (fd < 0)
	{							/* error */
		FUNC1(stderr, "cannot open unix file\"%s\"",
				filename);
	}

	/*
	 * read in from the inversion file and write to the Unix file
	 */
	while ((nbytes = FUNC4(conn, lobj_fd, buf, BUFSIZE)) > 0)
	{
		tmp = FUNC6(fd, buf, nbytes);
		if (tmp < nbytes)
		{
			FUNC1(stderr, "error while writing \"%s\"",
					filename);
		}
	}

	FUNC2(conn, lobj_fd);
	FUNC0(fd);

	return;
}