#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  inCursor; int /*<<< orphan*/  inStart; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  result; } ;
struct TYPE_22__ {int integer; scalar_t__ ptr; } ;
struct TYPE_23__ {int len; TYPE_1__ u; scalar_t__ isint; } ;
typedef  TYPE_2__ PQArgBlock ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ PGconn ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  ExecStatusType ;

/* Variables and functions */
 int /*<<< orphan*/  PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  PGRES_FATAL_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,TYPE_3__*) ; 
 scalar_t__ FUNC6 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int,int,TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (float,int,TYPE_3__*) ; 
 scalar_t__ FUNC12 (char*,int,TYPE_3__*) ; 
 scalar_t__ FUNC13 (char*,TYPE_3__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 scalar_t__ FUNC16 (int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char) ; 

PGresult *
FUNC18(PGconn *conn, Oid fnid,
				int *result_buf, int *actual_result_len,
				int result_is_int,
				const PQArgBlock *args, int nargs)
{
	bool		needInput = false;
	ExecStatusType status = PGRES_FATAL_ERROR;
	char		id;
	int			i;

	/* PQfn already validated connection state */

	if (FUNC11('F', false, conn) < 0 ||	/* function call msg */
		FUNC13(" ", conn) < 0 ||	/* dummy string */
		FUNC9(fnid, 4, conn) != 0 || /* function id */
		FUNC9(nargs, 4, conn) != 0)	/* # of args */
	{
		/* error message should be set up already */
		return NULL;
	}

	for (i = 0; i < nargs; ++i)
	{							/* len.int4 + contents	   */
		if (FUNC9(args[i].len, 4, conn))
			return NULL;

		if (args[i].isint)
		{
			if (FUNC9(args[i].u.integer, 4, conn))
				return NULL;
		}
		else
		{
			if (FUNC12((char *) args[i].u.ptr, args[i].len, conn))
				return NULL;
		}
	}

	if (FUNC10(conn) < 0 ||
		FUNC3(conn))
		return NULL;

	for (;;)
	{
		if (needInput)
		{
			/* Wait for some data to arrive (or for the channel to close) */
			if (FUNC16(true, false, conn) ||
				FUNC14(conn) < 0)
				break;
		}

		/*
		 * Scan the message. If we run out of data, loop around to try again.
		 */
		conn->inCursor = conn->inStart;
		needInput = true;

		if (FUNC6(&id, conn))
			continue;

		/*
		 * We should see V or E response to the command, but might get N
		 * and/or A notices first. We also need to swallow the final Z before
		 * returning.
		 */
		switch (id)
		{
			case 'V':			/* function result */
				if (FUNC6(&id, conn))
					continue;
				if (id == 'G')
				{
					/* function returned nonempty value */
					if (FUNC5(actual_result_len, 4, conn))
						continue;
					if (result_is_int)
					{
						if (FUNC5(result_buf, 4, conn))
							continue;
					}
					else
					{
						if (FUNC7((char *) result_buf,
									   *actual_result_len,
									   conn))
							continue;
					}
					if (FUNC6(&id, conn))	/* get the last '0' */
						continue;
				}
				if (id == '0')
				{
					/* correctly finished function result message */
					status = PGRES_COMMAND_OK;
				}
				else
				{
					/* The backend violates the protocol. */
					FUNC17(&conn->errorMessage,
									  FUNC2("protocol error: id=0x%x\n"),
									  id);
					FUNC15(conn);
					conn->inStart = conn->inCursor;
					return FUNC8(conn);
				}
				break;
			case 'E':			/* error return */
				if (FUNC4(conn, true))
					continue;
				status = PGRES_FATAL_ERROR;
				break;
			case 'A':			/* notify message */
				/* handle notify and go back to processing return values */
				if (FUNC1(conn))
					continue;
				break;
			case 'N':			/* notice */
				/* handle notice and go back to processing return values */
				if (FUNC4(conn, false))
					continue;
				break;
			case 'Z':			/* backend is ready for new query */
				/* consume the message and exit */
				conn->inStart = conn->inCursor;
				/* if we saved a result object (probably an error), use it */
				if (conn->result)
					return FUNC8(conn);
				return FUNC0(conn, status);
			default:
				/* The backend violates the protocol. */
				FUNC17(&conn->errorMessage,
								  FUNC2("protocol error: id=0x%x\n"),
								  id);
				FUNC15(conn);
				conn->inStart = conn->inCursor;
				return FUNC8(conn);
		}
		/* Completed this message, keep going */
		conn->inStart = conn->inCursor;
		needInput = false;
	}

	/*
	 * We fall out of the loop only upon failing to read data.
	 * conn->errorMessage has been set by pqWait or pqReadData. We want to
	 * append it to any already-received error message.
	 */
	FUNC15(conn);
	return FUNC8(conn);
}