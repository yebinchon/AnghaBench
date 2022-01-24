#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pg_int64 ;
struct TYPE_12__ {TYPE_2__* lobjfuncs; int /*<<< orphan*/  errorMessage; } ;
struct TYPE_9__ {int integer; int* ptr; } ;
struct TYPE_11__ {int isint; int len; TYPE_1__ u; } ;
struct TYPE_10__ {scalar_t__ fn_lo_truncate64; } ;
typedef  TYPE_3__ PQArgBlock ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ PGconn ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,scalar_t__,int*,int*,int,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC7(PGconn *conn, int fd, pg_int64 len)
{
	PQArgBlock	argv[2];
	PGresult   *res;
	int			retval;
	int			result_len;

	if (conn == NULL || conn->lobjfuncs == NULL)
	{
		if (FUNC5(conn) < 0)
			return -1;
	}

	if (conn->lobjfuncs->fn_lo_truncate64 == 0)
	{
		FUNC6(&conn->errorMessage,
						  FUNC3("cannot determine OID of function lo_truncate64\n"));
		return -1;
	}

	argv[0].isint = 1;
	argv[0].len = 4;
	argv[0].u.integer = fd;

	len = FUNC4(len);
	argv[1].isint = 0;
	argv[1].len = 8;
	argv[1].u.ptr = (int *) &len;

	res = FUNC1(conn, conn->lobjfuncs->fn_lo_truncate64,
			   &retval, &result_len, 1, argv, 2);

	if (FUNC2(res) == PGRES_COMMAND_OK)
	{
		FUNC0(res);
		return retval;
	}
	else
	{
		FUNC0(res);
		return -1;
	}
}