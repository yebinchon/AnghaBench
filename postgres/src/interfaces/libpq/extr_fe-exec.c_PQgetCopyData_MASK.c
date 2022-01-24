#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ asyncStatus; int /*<<< orphan*/  pversion; int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 scalar_t__ PGASYNC_COPY_BOTH ; 
 scalar_t__ PGASYNC_COPY_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,char**,int) ; 
 int FUNC3 (TYPE_1__*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(PGconn *conn, char **buffer, int async)
{
	*buffer = NULL;				/* for all failure cases */
	if (!conn)
		return -2;
	if (conn->asyncStatus != PGASYNC_COPY_OUT &&
		conn->asyncStatus != PGASYNC_COPY_BOTH)
	{
		FUNC4(&conn->errorMessage,
						  FUNC1("no COPY in progress\n"));
		return -2;
	}
	if (FUNC0(conn->pversion) >= 3)
		return FUNC3(conn, buffer, async);
	else
		return FUNC2(conn, buffer, async);
}