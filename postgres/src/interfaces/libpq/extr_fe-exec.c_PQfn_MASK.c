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
struct TYPE_5__ {scalar_t__ sock; scalar_t__ asyncStatus; int /*<<< orphan*/  pversion; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/ * result; } ;
typedef  int /*<<< orphan*/  PQArgBlock ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 scalar_t__ PGASYNC_IDLE ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int,int*,int*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int,int*,int*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

PGresult *
FUNC6(PGconn *conn,
	 int fnid,
	 int *result_buf,
	 int *result_len,
	 int result_is_int,
	 const PQArgBlock *args,
	 int nargs)
{
	*result_len = 0;

	if (!conn)
		return NULL;

	/* clear the error string */
	FUNC5(&conn->errorMessage);

	if (conn->sock == PGINVALID_SOCKET || conn->asyncStatus != PGASYNC_IDLE ||
		conn->result != NULL)
	{
		FUNC4(&conn->errorMessage,
						  FUNC1("connection in wrong state\n"));
		return NULL;
	}

	if (FUNC0(conn->pversion) >= 3)
		return FUNC3(conn, fnid,
							   result_buf, result_len,
							   result_is_int,
							   args, nargs);
	else
		return FUNC2(conn, fnid,
							   result_buf, result_len,
							   result_is_int,
							   args, nargs);
}