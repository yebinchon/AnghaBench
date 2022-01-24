#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  asyncStatus; scalar_t__ last_query; int /*<<< orphan*/  queryclass; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  pversion; } ;
typedef  TYPE_1__ PGconn ;
typedef  int Oid ;

/* Variables and functions */
 int /*<<< orphan*/  PGASYNC_BUSY ; 
 int /*<<< orphan*/  PGQUERY_PREPARE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int const,int,TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (char,int,TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*) ; 

int
FUNC11(PGconn *conn,
			  const char *stmtName, const char *query,
			  int nParams, const Oid *paramTypes)
{
	if (!FUNC1(conn))
		return 0;

	/* check the arguments */
	if (!stmtName)
	{
		FUNC9(&conn->errorMessage,
						  FUNC3("statement name is a null pointer\n"));
		return 0;
	}
	if (!query)
	{
		FUNC9(&conn->errorMessage,
						  FUNC3("command string is a null pointer\n"));
		return 0;
	}
	if (nParams < 0 || nParams > 65535)
	{
		FUNC9(&conn->errorMessage,
						  FUNC3("number of parameters must be between 0 and 65535\n"));
		return 0;
	}

	/* This isn't gonna work on a 2.0 server */
	if (FUNC0(conn->pversion) < 3)
	{
		FUNC9(&conn->errorMessage,
						  FUNC3("function requires at least protocol version 3.0\n"));
		return 0;
	}

	/* construct the Parse message */
	if (FUNC7('P', false, conn) < 0 ||
		FUNC8(stmtName, conn) < 0 ||
		FUNC8(query, conn) < 0)
		goto sendFailed;

	if (nParams > 0 && paramTypes)
	{
		int			i;

		if (FUNC5(nParams, 2, conn) < 0)
			goto sendFailed;
		for (i = 0; i < nParams; i++)
		{
			if (FUNC5(paramTypes[i], 4, conn) < 0)
				goto sendFailed;
		}
	}
	else
	{
		if (FUNC5(0, 2, conn) < 0)
			goto sendFailed;
	}
	if (FUNC6(conn) < 0)
		goto sendFailed;

	/* construct the Sync message */
	if (FUNC7('S', false, conn) < 0 ||
		FUNC6(conn) < 0)
		goto sendFailed;

	/* remember we are doing just a Parse */
	conn->queryclass = PGQUERY_PREPARE;

	/* and remember the query text too, if possible */
	/* if insufficient memory, last_query just winds up NULL */
	if (conn->last_query)
		FUNC2(conn->last_query);
	conn->last_query = FUNC10(query);

	/*
	 * Give the data a push.  In nonblock mode, don't complain if we're unable
	 * to send it all; PQgetResult() will do any additional flushing needed.
	 */
	if (FUNC4(conn) < 0)
		goto sendFailed;

	/* OK, it's launched! */
	conn->asyncStatus = PGASYNC_BUSY;
	return 1;

sendFailed:
	/* error message should be set up already */
	return 0;
}