#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t inCursor; int inStart; int /*<<< orphan*/ * inBuffer; int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC7(PGconn *conn, char **buffer, int async)
{
	int			msgLength;

	for (;;)
	{
		/*
		 * Collect the next input message.  To make life simpler for async
		 * callers, we keep returning 0 until the next message is fully
		 * available, even if it is not Copy Data.
		 */
		msgLength = FUNC0(conn);
		if (msgLength < 0)
			return msgLength;	/* end-of-copy or error */
		if (msgLength == 0)
		{
			/* Don't block if async read requested */
			if (async)
				return 0;
			/* Need to load more data */
			if (FUNC5(true, false, conn) ||
				FUNC4(conn) < 0)
				return -2;
			continue;
		}

		/*
		 * Drop zero-length messages (shouldn't happen anyway).  Otherwise
		 * pass the data back to the caller.
		 */
		msgLength -= 4;
		if (msgLength > 0)
		{
			*buffer = (char *) FUNC2(msgLength + 1);
			if (*buffer == NULL)
			{
				FUNC6(&conn->errorMessage,
								  FUNC1("out of memory\n"));
				return -2;
			}
			FUNC3(*buffer, &conn->inBuffer[conn->inCursor], msgLength);
			(*buffer)[msgLength] = '\0';	/* Add terminating null */

			/* Mark message consumed */
			conn->inStart = conn->inCursor + msgLength;

			return msgLength;
		}

		/* Empty, so drop it and loop around for another */
		conn->inStart = conn->inCursor;
	}
}