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
 int INV_READ ; 
 int INV_WRITE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(PGconn *conn, Oid lobjId, pg_int64 len)
{
	int			lobj_fd;

	lobj_fd = FUNC3(conn, lobjId, INV_READ | INV_WRITE);
	if (lobj_fd < 0)
		FUNC1(stderr, "cannot open large object %u", lobjId);

	if (FUNC4(conn, lobj_fd, len) < 0)
		FUNC1(stderr, "error in lo_truncate64: %s", FUNC0(conn));

	FUNC2(conn, lobj_fd);
}