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
struct TYPE_12__ {TYPE_2__* lobjfuncs; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_11__ {int isint; int len; TYPE_1__ u; } ;
struct TYPE_10__ {int /*<<< orphan*/  fn_lo_close; } ;
typedef  TYPE_3__ PQArgBlock ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ PGconn ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int*,int*,int,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 

int
FUNC4(PGconn *conn, int fd)
{
	PQArgBlock	argv[1];
	PGresult   *res;
	int			retval;
	int			result_len;

	if (conn == NULL || conn->lobjfuncs == NULL)
	{
		if (FUNC3(conn) < 0)
			return -1;
	}

	argv[0].isint = 1;
	argv[0].len = 4;
	argv[0].u.integer = fd;
	res = FUNC1(conn, conn->lobjfuncs->fn_lo_close,
			   &retval, &result_len, 1, argv, 1);
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