#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int inCursor; int inStart; int inEnd; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  result; } ;
struct TYPE_25__ {int integer; scalar_t__ ptr; } ;
struct TYPE_26__ {int len; TYPE_1__ u; scalar_t__ isint; } ;
typedef  TYPE_2__ PQArgBlock ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ PGconn ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  ExecStatusType ;

/* Variables and functions */
 int /*<<< orphan*/  PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  PGRES_FATAL_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 scalar_t__ FUNC10 (int*,int,TYPE_3__*) ; 
 scalar_t__ FUNC11 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (int,int,TYPE_3__*) ; 
 scalar_t__ FUNC15 (TYPE_3__*) ; 
 scalar_t__ FUNC16 (float,int,TYPE_3__*) ; 
 scalar_t__ FUNC17 (char*,int,TYPE_3__*) ; 
 scalar_t__ FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 scalar_t__ FUNC20 (int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char) ; 

PGresult *
FUNC22(PGconn *conn, Oid fnid,
				int *result_buf, int *actual_result_len,
				int result_is_int,
				const PQArgBlock *args, int nargs)
{
	bool		needInput = false;
	ExecStatusType status = PGRES_FATAL_ERROR;
	char		id;
	int			msgLength;
	int			avail;
	int			i;

	/* PQfn already validated connection state */

	if (FUNC16('F', false, conn) < 0 ||	/* function call msg */
		FUNC14(fnid, 4, conn) < 0 ||	/* function id */
		FUNC14(1, 2, conn) < 0 || /* # of format codes */
		FUNC14(1, 2, conn) < 0 || /* format code: BINARY */
		FUNC14(nargs, 2, conn) < 0)	/* # of args */
	{
		/* error message should be set up already */
		return NULL;
	}

	for (i = 0; i < nargs; ++i)
	{							/* len.int4 + contents	   */
		if (FUNC14(args[i].len, 4, conn))
			return NULL;
		if (args[i].len == -1)
			continue;			/* it's NULL */

		if (args[i].isint)
		{
			if (FUNC14(args[i].u.integer, args[i].len, conn))
				return NULL;
		}
		else
		{
			if (FUNC17((char *) args[i].u.ptr, args[i].len, conn))
				return NULL;
		}
	}

	if (FUNC14(1, 2, conn) < 0)	/* result format code: BINARY */
		return NULL;

	if (FUNC15(conn) < 0 ||
		FUNC8(conn))
		return NULL;

	for (;;)
	{
		if (needInput)
		{
			/* Wait for some data to arrive (or for the channel to close) */
			if (FUNC20(true, false, conn) ||
				FUNC18(conn) < 0)
				break;
		}

		/*
		 * Scan the message. If we run out of data, loop around to try again.
		 */
		needInput = true;

		conn->inCursor = conn->inStart;
		if (FUNC11(&id, conn))
			continue;
		if (FUNC10(&msgLength, 4, conn))
			continue;

		/*
		 * Try to validate message type/length here.  A length less than 4 is
		 * definitely broken.  Large lengths should only be believed for a few
		 * message types.
		 */
		if (msgLength < 4)
		{
			FUNC5(conn, id, msgLength);
			break;
		}
		if (msgLength > 30000 && !FUNC1(id))
		{
			FUNC5(conn, id, msgLength);
			break;
		}

		/*
		 * Can't process if message body isn't all here yet.
		 */
		msgLength -= 4;
		avail = conn->inEnd - conn->inCursor;
		if (avail < msgLength)
		{
			/*
			 * Before looping, enlarge the input buffer if needed to hold the
			 * whole message.  See notes in parseInput.
			 */
			if (FUNC7(conn->inCursor + (size_t) msgLength,
									 conn))
			{
				/*
				 * XXX add some better recovery code... plan is to skip over
				 * the message using its length, then report an error. For the
				 * moment, just treat this like loss of sync (which indeed it
				 * might be!)
				 */
				FUNC5(conn, id, msgLength);
				break;
			}
			continue;
		}

		/*
		 * We should see V or E response to the command, but might get N
		 * and/or A notices first. We also need to swallow the final Z before
		 * returning.
		 */
		switch (id)
		{
			case 'V':			/* function result */
				if (FUNC10(actual_result_len, 4, conn))
					continue;
				if (*actual_result_len != -1)
				{
					if (result_is_int)
					{
						if (FUNC10(result_buf, *actual_result_len, conn))
							continue;
					}
					else
					{
						if (FUNC12((char *) result_buf,
									   *actual_result_len,
									   conn))
							continue;
					}
				}
				/* correctly finished function result message */
				status = PGRES_COMMAND_OK;
				break;
			case 'E':			/* error return */
				if (FUNC9(conn, true))
					continue;
				status = PGRES_FATAL_ERROR;
				break;
			case 'A':			/* notify message */
				/* handle notify and go back to processing return values */
				if (FUNC2(conn))
					continue;
				break;
			case 'N':			/* notice */
				/* handle notice and go back to processing return values */
				if (FUNC9(conn, false))
					continue;
				break;
			case 'Z':			/* backend is ready for new query */
				if (FUNC4(conn))
					continue;
				/* consume the message and exit */
				conn->inStart += 5 + msgLength;
				/* if we saved a result object (probably an error), use it */
				if (conn->result)
					return FUNC13(conn);
				return FUNC0(conn, status);
			case 'S':			/* parameter status */
				if (FUNC3(conn))
					continue;
				break;
			default:
				/* The backend violates the protocol. */
				FUNC21(&conn->errorMessage,
								  FUNC6("protocol error: id=0x%x\n"),
								  id);
				FUNC19(conn);
				/* trust the specified message length as what to skip */
				conn->inStart += 5 + msgLength;
				return FUNC13(conn);
		}
		/* Completed this message, keep going */
		/* trust the specified message length as what to skip */
		conn->inStart += 5 + msgLength;
		needInput = false;
	}

	/*
	 * We fall out of the loop only upon failing to read data.
	 * conn->errorMessage has been set by pqWait or pqReadData. We want to
	 * append it to any already-received error message.
	 */
	FUNC19(conn);
	return FUNC13(conn);
}