#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  asyncStatus; scalar_t__ last_query; int /*<<< orphan*/  queryclass; int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  PGASYNC_BUSY ; 
 int /*<<< orphan*/  PGQUERY_SIMPLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (char,int,TYPE_1__*) ; 
 scalar_t__ FUNC6 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*) ; 

int
FUNC9(PGconn *conn, const char *query)
{
	if (!FUNC0(conn))
		return 0;

	/* check the argument */
	if (!query)
	{
		FUNC7(&conn->errorMessage,
						  FUNC2("command string is a null pointer\n"));
		return 0;
	}

	/* construct the outgoing Query message */
	if (FUNC5('Q', false, conn) < 0 ||
		FUNC6(query, conn) < 0 ||
		FUNC4(conn) < 0)
	{
		/* error message should be set up already */
		return 0;
	}

	/* remember we are using simple query protocol */
	conn->queryclass = PGQUERY_SIMPLE;

	/* and remember the query text too, if possible */
	/* if insufficient memory, last_query just winds up NULL */
	if (conn->last_query)
		FUNC1(conn->last_query);
	conn->last_query = FUNC8(query);

	/*
	 * Give the data a push.  In nonblock mode, don't complain if we're unable
	 * to send it all; PQgetResult() will do any additional flushing needed.
	 */
	if (FUNC3(conn) < 0)
	{
		/* error message should be set up already */
		return 0;
	}

	/* OK, it's launched! */
	conn->asyncStatus = PGASYNC_BUSY;
	return 1;
}