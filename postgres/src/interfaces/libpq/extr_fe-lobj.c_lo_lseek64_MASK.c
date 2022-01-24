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
typedef  int pg_int64 ;
struct TYPE_12__ {TYPE_2__* lobjfuncs; int /*<<< orphan*/  errorMessage; } ;
struct TYPE_9__ {int integer; int* ptr; } ;
struct TYPE_11__ {int isint; int len; TYPE_1__ u; } ;
struct TYPE_10__ {scalar_t__ fn_lo_lseek64; } ;
typedef  TYPE_3__ PQArgBlock ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ PGconn ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,scalar_t__,void*,int*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

pg_int64
FUNC8(PGconn *conn, int fd, pg_int64 offset, int whence)
{
	PQArgBlock	argv[3];
	PGresult   *res;
	pg_int64	retval;
	int			result_len;

	if (conn == NULL || conn->lobjfuncs == NULL)
	{
		if (FUNC5(conn) < 0)
			return -1;
	}

	if (conn->lobjfuncs->fn_lo_lseek64 == 0)
	{
		FUNC7(&conn->errorMessage,
						  FUNC3("cannot determine OID of function lo_lseek64\n"));
		return -1;
	}

	argv[0].isint = 1;
	argv[0].len = 4;
	argv[0].u.integer = fd;

	offset = FUNC4(offset);
	argv[1].isint = 0;
	argv[1].len = 8;
	argv[1].u.ptr = (int *) &offset;

	argv[2].isint = 1;
	argv[2].len = 4;
	argv[2].u.integer = whence;

	res = FUNC1(conn, conn->lobjfuncs->fn_lo_lseek64,
			   (void *) &retval, &result_len, 0, argv, 3);
	if (FUNC2(res) == PGRES_COMMAND_OK && result_len == 8)
	{
		FUNC0(res);
		return FUNC6(retval);
	}
	else
	{
		FUNC0(res);
		return -1;
	}
}