#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  asyncStatus; int /*<<< orphan*/ * last_query; int /*<<< orphan*/  queryclass; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  pversion; } ;
typedef  TYPE_1__ PGconn ;
typedef  int Oid ;

/* Variables and functions */
 int /*<<< orphan*/  PGASYNC_BUSY ; 
 int /*<<< orphan*/  PGQUERY_EXTENDED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int const,int,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (char,int,TYPE_1__*) ; 
 scalar_t__ FUNC7 (char,TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const* const,int,TYPE_1__*) ; 
 scalar_t__ FUNC9 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (char const*) ; 
 int FUNC12 (char const* const) ; 

__attribute__((used)) static int
FUNC13(PGconn *conn,
				const char *command,
				const char *stmtName,
				int nParams,
				const Oid *paramTypes,
				const char *const *paramValues,
				const int *paramLengths,
				const int *paramFormats,
				int resultFormat)
{
	int			i;

	/* This isn't gonna work on a 2.0 server */
	if (FUNC0(conn->pversion) < 3)
	{
		FUNC10(&conn->errorMessage,
						  FUNC2("function requires at least protocol version 3.0\n"));
		return 0;
	}

	/*
	 * We will send Parse (if needed), Bind, Describe Portal, Execute, Sync,
	 * using specified statement name and the unnamed portal.
	 */

	if (command)
	{
		/* construct the Parse message */
		if (FUNC6('P', false, conn) < 0 ||
			FUNC9(stmtName, conn) < 0 ||
			FUNC9(command, conn) < 0)
			goto sendFailed;
		if (nParams > 0 && paramTypes)
		{
			if (FUNC4(nParams, 2, conn) < 0)
				goto sendFailed;
			for (i = 0; i < nParams; i++)
			{
				if (FUNC4(paramTypes[i], 4, conn) < 0)
					goto sendFailed;
			}
		}
		else
		{
			if (FUNC4(0, 2, conn) < 0)
				goto sendFailed;
		}
		if (FUNC5(conn) < 0)
			goto sendFailed;
	}

	/* Construct the Bind message */
	if (FUNC6('B', false, conn) < 0 ||
		FUNC9("", conn) < 0 ||
		FUNC9(stmtName, conn) < 0)
		goto sendFailed;

	/* Send parameter formats */
	if (nParams > 0 && paramFormats)
	{
		if (FUNC4(nParams, 2, conn) < 0)
			goto sendFailed;
		for (i = 0; i < nParams; i++)
		{
			if (FUNC4(paramFormats[i], 2, conn) < 0)
				goto sendFailed;
		}
	}
	else
	{
		if (FUNC4(0, 2, conn) < 0)
			goto sendFailed;
	}

	if (FUNC4(nParams, 2, conn) < 0)
		goto sendFailed;

	/* Send parameters */
	for (i = 0; i < nParams; i++)
	{
		if (paramValues && paramValues[i])
		{
			int			nbytes;

			if (paramFormats && paramFormats[i] != 0)
			{
				/* binary parameter */
				if (paramLengths)
					nbytes = paramLengths[i];
				else
				{
					FUNC10(&conn->errorMessage,
									  FUNC2("length must be given for binary parameter\n"));
					goto sendFailed;
				}
			}
			else
			{
				/* text parameter, do not use paramLengths */
				nbytes = FUNC12(paramValues[i]);
			}
			if (FUNC4(nbytes, 4, conn) < 0 ||
				FUNC8(paramValues[i], nbytes, conn) < 0)
				goto sendFailed;
		}
		else
		{
			/* take the param as NULL */
			if (FUNC4(-1, 4, conn) < 0)
				goto sendFailed;
		}
	}
	if (FUNC4(1, 2, conn) < 0 ||
		FUNC4(resultFormat, 2, conn))
		goto sendFailed;
	if (FUNC5(conn) < 0)
		goto sendFailed;

	/* construct the Describe Portal message */
	if (FUNC6('D', false, conn) < 0 ||
		FUNC7('P', conn) < 0 ||
		FUNC9("", conn) < 0 ||
		FUNC5(conn) < 0)
		goto sendFailed;

	/* construct the Execute message */
	if (FUNC6('E', false, conn) < 0 ||
		FUNC9("", conn) < 0 ||
		FUNC4(0, 4, conn) < 0 ||
		FUNC5(conn) < 0)
		goto sendFailed;

	/* construct the Sync message */
	if (FUNC6('S', false, conn) < 0 ||
		FUNC5(conn) < 0)
		goto sendFailed;

	/* remember we are using extended query protocol */
	conn->queryclass = PGQUERY_EXTENDED;

	/* and remember the query text too, if possible */
	/* if insufficient memory, last_query just winds up NULL */
	if (conn->last_query)
		FUNC1(conn->last_query);
	if (command)
		conn->last_query = FUNC11(command);
	else
		conn->last_query = NULL;

	/*
	 * Give the data a push.  In nonblock mode, don't complain if we're unable
	 * to send it all; PQgetResult() will do any additional flushing needed.
	 */
	if (FUNC3(conn) < 0)
		goto sendFailed;

	/* OK, it's launched! */
	conn->asyncStatus = PGASYNC_BUSY;
	return 1;

sendFailed:
	/* error message should be set up already */
	return 0;
}