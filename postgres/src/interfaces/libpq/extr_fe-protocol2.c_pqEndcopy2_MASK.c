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
struct TYPE_15__ {scalar_t__ asyncStatus; int /*<<< orphan*/  noticeHooks; TYPE_3__ errorMessage; } ;
struct TYPE_14__ {scalar_t__ resultStatus; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 scalar_t__ PGASYNC_BUSY ; 
 scalar_t__ PGASYNC_COPY_IN ; 
 scalar_t__ PGASYNC_COPY_OUT ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

int
FUNC11(PGconn *conn)
{
	PGresult   *result;

	if (conn->asyncStatus != PGASYNC_COPY_IN &&
		conn->asyncStatus != PGASYNC_COPY_OUT)
	{
		FUNC9(&conn->errorMessage,
						  FUNC5("no COPY in progress\n"));
		return 1;
	}

	/*
	 * make sure no data is waiting to be sent, abort if we are non-blocking
	 * and the flush fails
	 */
	if (FUNC6(conn) && FUNC8(conn))
		return 1;

	/* non blocking connections may have to abort at this point. */
	if (FUNC8(conn) && FUNC2(conn))
		return 1;

	/* Return to active duty */
	conn->asyncStatus = PGASYNC_BUSY;
	FUNC10(&conn->errorMessage);

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
		FUNC7(&conn->noticeHooks, "%s", conn->errorMessage.data);
		conn->errorMessage.data[conn->errorMessage.len - 1] = svLast;
	}

	FUNC0(result);

	/*
	 * The worst case is that we've lost sync with the backend entirely due to
	 * application screwup of the copy in/out protocol. To recover, reset the
	 * connection (talk about using a sledgehammer...)
	 */
	FUNC7(&conn->noticeHooks,
					 "lost synchronization with server, resetting connection");

	/*
	 * Users doing non-blocking connections need to handle the reset
	 * themselves, they'll need to check the connection status if we return an
	 * error.
	 */
	if (FUNC8(conn))
		FUNC4(conn);
	else
		FUNC3(conn);

	return 1;
}