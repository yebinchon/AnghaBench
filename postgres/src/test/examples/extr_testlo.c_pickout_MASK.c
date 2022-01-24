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
 int /*<<< orphan*/  INV_READ ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*,int) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC7(PGconn *conn, Oid lobjId, int start, int len)
{
	int			lobj_fd;
	char	   *buf;
	int			nbytes;
	int			nread;

	lobj_fd = FUNC4(conn, lobjId, INV_READ);
	if (lobj_fd < 0)
		FUNC0(stderr, "cannot open large object %u", lobjId);

	FUNC3(conn, lobj_fd, start, SEEK_SET);
	buf = FUNC6(len + 1);

	nread = 0;
	while (len - nread > 0)
	{
		nbytes = FUNC5(conn, lobj_fd, buf, len - nread);
		buf[nbytes] = '\0';
		FUNC0(stderr, ">>> %s", buf);
		nread += nbytes;
		if (nbytes <= 0)
			break;				/* no more data? */
	}
	FUNC1(buf);
	FUNC0(stderr, "\n");
	FUNC2(conn, lobj_fd);
}