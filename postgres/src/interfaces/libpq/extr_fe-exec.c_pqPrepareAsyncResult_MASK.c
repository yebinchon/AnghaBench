#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * next_result; int /*<<< orphan*/ * result; int /*<<< orphan*/  errorMessage; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  PGRES_FATAL_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

PGresult *
FUNC4(PGconn *conn)
{
	PGresult   *res;

	/*
	 * conn->result is the PGresult to return.  If it is NULL (which probably
	 * shouldn't happen) we assume there is an appropriate error message in
	 * conn->errorMessage.
	 */
	res = conn->result;
	if (!res)
		res = FUNC0(conn, PGRES_FATAL_ERROR);
	else
	{
		/*
		 * Make sure PQerrorMessage agrees with result; it could be different
		 * if we have concatenated messages.
		 */
		FUNC3(&conn->errorMessage);
		FUNC2(&conn->errorMessage,
							 FUNC1(res));
	}

	/*
	 * Replace conn->result with next_result, if any.  In the normal case
	 * there isn't a next result and we're just dropping ownership of the
	 * current result.  In single-row mode this restores the situation to what
	 * it was before we created the current single-row result.
	 */
	conn->result = conn->next_result;
	conn->next_result = NULL;

	return res;
}