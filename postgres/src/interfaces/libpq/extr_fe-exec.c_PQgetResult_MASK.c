#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  data; } ;
struct TYPE_25__ {TYPE_2__* result; TYPE_3__* conn; } ;
struct TYPE_24__ {scalar_t__ asyncStatus; TYPE_6__ errorMessage; scalar_t__ write_failed; } ;
struct TYPE_23__ {int nEvents; TYPE_1__* events; int /*<<< orphan*/  resultStatus; } ;
struct TYPE_22__ {int name; int resultInitialized; int /*<<< orphan*/  passThrough; int /*<<< orphan*/  (* proc ) (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ PGresult ;
typedef  TYPE_3__ PGconn ;
typedef  TYPE_4__ PGEventResultCreate ;

/* Variables and functions */
 scalar_t__ PGASYNC_BUSY ; 
#define  PGASYNC_COPY_BOTH 132 
#define  PGASYNC_COPY_IN 131 
#define  PGASYNC_COPY_OUT 130 
#define  PGASYNC_IDLE 129 
#define  PGASYNC_READY 128 
 int /*<<< orphan*/  PGEVT_RESULTCREATE ; 
 int /*<<< orphan*/  PGRES_COPY_BOTH ; 
 int /*<<< orphan*/  PGRES_COPY_IN ; 
 int /*<<< orphan*/  PGRES_COPY_OUT ; 
 int /*<<< orphan*/  PGRES_FATAL_ERROR ; 
 TYPE_2__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 

PGresult *
FUNC13(PGconn *conn)
{
	PGresult   *res;

	if (!conn)
		return NULL;

	/* Parse any available data, if our state permits. */
	FUNC3(conn);

	/* If not ready to return something, block until we are. */
	while (conn->asyncStatus == PGASYNC_BUSY)
	{
		int			flushResult;

		/*
		 * If data remains unsent, send it.  Else we might be waiting for the
		 * result of a command the backend hasn't even got yet.
		 */
		while ((flushResult = FUNC4(conn)) > 0)
		{
			if (FUNC10(false, true, conn))
			{
				flushResult = -1;
				break;
			}
		}

		/*
		 * Wait for some more data, and load it.  (Note: if the connection has
		 * been lost, pqWait should return immediately because the socket
		 * should be read-ready, either with the last server data or with an
		 * EOF indication.  We expect therefore that this won't result in any
		 * undue delay in reporting a previous write failure.)
		 */
		if (flushResult ||
			FUNC10(true, false, conn) ||
			FUNC6(conn) < 0)
		{
			/*
			 * conn->errorMessage has been set by pqWait or pqReadData. We
			 * want to append it to any already-received error message.
			 */
			FUNC7(conn);
			conn->asyncStatus = PGASYNC_IDLE;
			return FUNC5(conn);
		}

		/* Parse it. */
		FUNC3(conn);

		/*
		 * If we had a write error, but nothing above obtained a query result
		 * or detected a read error, report the write error.
		 */
		if (conn->write_failed && conn->asyncStatus == PGASYNC_BUSY)
		{
			FUNC8(conn);
			conn->asyncStatus = PGASYNC_IDLE;
			return FUNC5(conn);
		}
	}

	/* Return the appropriate thing. */
	switch (conn->asyncStatus)
	{
		case PGASYNC_IDLE:
			res = NULL;			/* query is complete */
			break;
		case PGASYNC_READY:
			res = FUNC5(conn);
			/* Set the state back to BUSY, allowing parsing to proceed. */
			conn->asyncStatus = PGASYNC_BUSY;
			break;
		case PGASYNC_COPY_IN:
			res = FUNC1(conn, PGRES_COPY_IN);
			break;
		case PGASYNC_COPY_OUT:
			res = FUNC1(conn, PGRES_COPY_OUT);
			break;
		case PGASYNC_COPY_BOTH:
			res = FUNC1(conn, PGRES_COPY_BOTH);
			break;
		default:
			FUNC11(&conn->errorMessage,
							  FUNC2("unexpected asyncStatus: %d\n"),
							  (int) conn->asyncStatus);
			res = FUNC0(conn, PGRES_FATAL_ERROR);
			break;
	}

	if (res)
	{
		int			i;

		for (i = 0; i < res->nEvents; i++)
		{
			PGEventResultCreate evt;

			evt.conn = conn;
			evt.result = res;
			if (!res->events[i].proc(PGEVT_RESULTCREATE, &evt,
									 res->events[i].passThrough))
			{
				FUNC11(&conn->errorMessage,
								  FUNC2("PGEventProc \"%s\" failed during PGEVT_RESULTCREATE event\n"),
								  res->events[i].name);
				FUNC9(res, conn->errorMessage.data);
				res->resultStatus = PGRES_FATAL_ERROR;
				break;
			}
			res->events[i].resultInitialized = true;
		}
	}

	return res;
}