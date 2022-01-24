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
typedef  int /*<<< orphan*/  pg_int64 ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int Oid ;

/* Variables and functions */
 int /*<<< orphan*/  INV_READ ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC9(PGconn *conn, Oid lobjId, pg_int64 start, int len)
{
	int			lobj_fd;
	char	   *buf;
	int			nbytes;
	int			nread;

	lobj_fd = FUNC5(conn, lobjId, INV_READ);
	if (lobj_fd < 0)
		FUNC1(stderr, "cannot open large object %u", lobjId);

	if (FUNC4(conn, lobj_fd, start, SEEK_SET) < 0)
		FUNC1(stderr, "error in lo_lseek64: %s", FUNC0(conn));

	if (FUNC7(conn, lobj_fd) != start)
		FUNC1(stderr, "error in lo_tell64: %s", FUNC0(conn));

	buf = FUNC8(len + 1);

	nread = 0;
	while (len - nread > 0)
	{
		nbytes = FUNC6(conn, lobj_fd, buf, len - nread);
		buf[nbytes] = '\0';
		FUNC1(stderr, ">>> %s", buf);
		nread += nbytes;
		if (nbytes <= 0)
			break;				/* no more data? */
	}
	FUNC2(buf);
	FUNC1(stderr, "\n");
	FUNC3(conn, lobj_fd);
}