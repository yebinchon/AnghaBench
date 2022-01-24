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
struct TYPE_10__ {int inCursor; int inStart; int inEnd; void* asyncStatus; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 void* PGASYNC_BUSY ; 
 void* PGASYNC_COPY_BOTH ; 
 void* PGASYNC_COPY_IN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char,int) ; 
 scalar_t__ FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int*,int,TYPE_1__*) ; 
 scalar_t__ FUNC6 (char*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(PGconn *conn)
{
	char		id;
	int			msgLength;
	int			avail;

	for (;;)
	{
		/*
		 * Do we have the next input message?  To make life simpler for async
		 * callers, we keep returning 0 until the next message is fully
		 * available, even if it is not Copy Data.
		 */
		conn->inCursor = conn->inStart;
		if (FUNC6(&id, conn))
			return 0;
		if (FUNC5(&msgLength, 4, conn))
			return 0;
		if (msgLength < 4)
		{
			FUNC2(conn, id, msgLength);
			return -2;
		}
		avail = conn->inEnd - conn->inCursor;
		if (avail < msgLength - 4)
		{
			/*
			 * Before returning, enlarge the input buffer if needed to hold
			 * the whole message.  See notes in parseInput.
			 */
			if (FUNC3(conn->inCursor + (size_t) msgLength - 4,
									 conn))
			{
				/*
				 * XXX add some better recovery code... plan is to skip over
				 * the message using its length, then report an error. For the
				 * moment, just treat this like loss of sync (which indeed it
				 * might be!)
				 */
				FUNC2(conn, id, msgLength);
				return -2;
			}
			return 0;
		}

		/*
		 * If it's a legitimate async message type, process it.  (NOTIFY
		 * messages are not currently possible here, but we handle them for
		 * completeness.)  Otherwise, if it's anything except Copy Data,
		 * report end-of-copy.
		 */
		switch (id)
		{
			case 'A':			/* NOTIFY */
				if (FUNC0(conn))
					return 0;
				break;
			case 'N':			/* NOTICE */
				if (FUNC4(conn, false))
					return 0;
				break;
			case 'S':			/* ParameterStatus */
				if (FUNC1(conn))
					return 0;
				break;
			case 'd':			/* Copy Data, pass it back to caller */
				return msgLength;
			case 'c':

				/*
				 * If this is a CopyDone message, exit COPY_OUT mode and let
				 * caller read status with PQgetResult().  If we're in
				 * COPY_BOTH mode, return to COPY_IN mode.
				 */
				if (conn->asyncStatus == PGASYNC_COPY_BOTH)
					conn->asyncStatus = PGASYNC_COPY_IN;
				else
					conn->asyncStatus = PGASYNC_BUSY;
				return -1;
			default:			/* treat as end of copy */

				/*
				 * Any other message terminates either COPY_IN or COPY_BOTH
				 * mode.
				 */
				conn->asyncStatus = PGASYNC_BUSY;
				return -1;
		}

		/* Drop the processed message and loop around for another */
		conn->inStart = conn->inCursor;
	}
}