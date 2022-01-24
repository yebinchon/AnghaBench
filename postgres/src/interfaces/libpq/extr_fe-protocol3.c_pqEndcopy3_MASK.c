#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int len; char* data; } ;
struct TYPE_15__ {scalar_t__ asyncStatus; scalar_t__ queryclass; TYPE_3__ errorMessage; int /*<<< orphan*/  noticeHooks; } ;
struct TYPE_14__ {scalar_t__ resultStatus; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 scalar_t__ PGASYNC_BUSY ; 
 scalar_t__ PGASYNC_COPY_BOTH ; 
 scalar_t__ PGASYNC_COPY_IN ; 
 scalar_t__ PGASYNC_COPY_OUT ; 
 scalar_t__ PGQUERY_SIMPLE ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (char,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

int
FUNC11(PGconn *conn)
{
	PGresult   *result;

	if (conn->asyncStatus != PGASYNC_COPY_IN &&
		conn->asyncStatus != PGASYNC_COPY_OUT &&
		conn->asyncStatus != PGASYNC_COPY_BOTH)
	{
		FUNC9(&conn->errorMessage,
						  FUNC3("no COPY in progress\n"));
		return 1;
	}

	/* Send the CopyDone message if needed */
	if (conn->asyncStatus == PGASYNC_COPY_IN ||
		conn->asyncStatus == PGASYNC_COPY_BOTH)
	{
		if (FUNC8('c', false, conn) < 0 ||
			FUNC7(conn) < 0)
			return 1;

		/*
		 * If we sent the COPY command in extended-query mode, we must issue a
		 * Sync as well.
		 */
		if (conn->queryclass != PGQUERY_SIMPLE)
		{
			if (FUNC8('S', false, conn) < 0 ||
				FUNC7(conn) < 0)
				return 1;
		}
	}

	/*
	 * make sure no data is waiting to be sent, abort if we are non-blocking
	 * and the flush fails
	 */
	if (FUNC4(conn) && FUNC6(conn))
		return 1;

	/* Return to active duty */
	conn->asyncStatus = PGASYNC_BUSY;
	FUNC10(&conn->errorMessage);

	/*
	 * Non blocking connections may have to abort at this point.  If everyone
	 * played the game there should be no problem, but in error scenarios the
	 * expected messages may not have arrived yet.  (We are assuming that the
	 * backend's packetizing will ensure that CommandComplete arrives along
	 * with the CopyDone; are there corner cases where that doesn't happen?)
	 */
	if (FUNC6(conn) && FUNC2(conn))
		return 1;

	/* Wait for the completion response */
	result = FUNC1(conn);

	/* Expecting a successful result */
	if (result && result->resultStatus == PGRES_COMMAND_OK)
	{
		FUNC0(result);
		return 0;
	}

	/*
	 * Trouble. For backwards-compatibility reasons, we issue the error
	 * message as if it were a notice (would be nice to get rid of this
	 * silliness, but too many apps probably don't handle errors from
	 * PQendcopy reasonably).  Note that the app can still obtain the error
	 * status from the PGconn object.
	 */
	if (conn->errorMessage.len > 0)
	{
		/* We have to strip the trailing newline ... pain in neck... */
		char		svLast = conn->errorMessage.data[conn->errorMessage.len - 1];

		if (svLast == '\n')
			conn->errorMessage.data[conn->errorMessage.len - 1] = '\0';
		FUNC5(&conn->noticeHooks, "%s", conn->errorMessage.data);
		conn->errorMessage.data[conn->errorMessage.len - 1] = svLast;
	}

	FUNC0(result);

	return 1;
}