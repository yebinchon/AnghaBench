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
struct TYPE_8__ {scalar_t__ asyncStatus; scalar_t__ queryclass; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  pversion; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 scalar_t__ PGASYNC_BUSY ; 
 scalar_t__ PGASYNC_COPY_BOTH ; 
 scalar_t__ PGASYNC_COPY_IN ; 
 scalar_t__ PGASYNC_COPY_OUT ; 
 scalar_t__ PGQUERY_SIMPLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (char,int,TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*,int,TYPE_1__*) ; 
 scalar_t__ FUNC6 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(PGconn *conn, const char *errormsg)
{
	if (!conn)
		return -1;
	if (conn->asyncStatus != PGASYNC_COPY_IN &&
		conn->asyncStatus != PGASYNC_COPY_BOTH)
	{
		FUNC7(&conn->errorMessage,
						  FUNC1("no COPY in progress\n"));
		return -1;
	}

	/*
	 * Send the COPY END indicator.  This is simple enough that we don't
	 * bother delegating it to the fe-protocol files.
	 */
	if (FUNC0(conn->pversion) >= 3)
	{
		if (errormsg)
		{
			/* Send COPY FAIL */
			if (FUNC4('f', false, conn) < 0 ||
				FUNC6(errormsg, conn) < 0 ||
				FUNC3(conn) < 0)
				return -1;
		}
		else
		{
			/* Send COPY DONE */
			if (FUNC4('c', false, conn) < 0 ||
				FUNC3(conn) < 0)
				return -1;
		}

		/*
		 * If we sent the COPY command in extended-query mode, we must issue a
		 * Sync as well.
		 */
		if (conn->queryclass != PGQUERY_SIMPLE)
		{
			if (FUNC4('S', false, conn) < 0 ||
				FUNC3(conn) < 0)
				return -1;
		}
	}
	else
	{
		if (errormsg)
		{
			/* Oops, no way to do this in 2.0 */
			FUNC7(&conn->errorMessage,
							  FUNC1("function requires at least protocol version 3.0\n"));
			return -1;
		}
		else
		{
			/* Send old-style end-of-data marker */
			if (FUNC4(0, false, conn) < 0 ||
				FUNC5("\\.\n", 3, conn) < 0 ||
				FUNC3(conn) < 0)
				return -1;
		}
	}

	/* Return to active duty */
	if (conn->asyncStatus == PGASYNC_COPY_BOTH)
		conn->asyncStatus = PGASYNC_COPY_OUT;
	else
		conn->asyncStatus = PGASYNC_BUSY;
	FUNC8(&conn->errorMessage);

	/* Try to flush data */
	if (FUNC2(conn) < 0)
		return -1;

	return 1;
}