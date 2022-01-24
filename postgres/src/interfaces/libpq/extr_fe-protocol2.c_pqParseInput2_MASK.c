#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
struct TYPE_16__ {scalar_t__ asyncStatus; int /*<<< orphan*/  inCursor; int /*<<< orphan*/  inStart; int /*<<< orphan*/  inEnd; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  noticeHooks; TYPE_1__* result; TYPE_5__ workBuffer; int /*<<< orphan*/  be_key; int /*<<< orphan*/  be_pid; } ;
struct TYPE_15__ {int /*<<< orphan*/  cmdStatus; } ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  CMDSTATUS_LEN ; 
 scalar_t__ PGASYNC_BUSY ; 
 scalar_t__ PGASYNC_COPY_IN ; 
 scalar_t__ PGASYNC_COPY_OUT ; 
 scalar_t__ PGASYNC_IDLE ; 
 void* PGASYNC_READY ; 
 int /*<<< orphan*/  PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  PGRES_EMPTY_QUERY ; 
 void* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 scalar_t__ FUNC8 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(PGconn *conn)
{
	char		id;

	/*
	 * Loop to parse successive complete messages available in the buffer.
	 */
	for (;;)
	{
		/*
		 * Quit if in COPY_OUT state: we expect raw data from the server until
		 * PQendcopy is called.  Don't try to parse it according to the normal
		 * protocol.  (This is bogus.  The data lines ought to be part of the
		 * protocol and have identifying leading characters.)
		 */
		if (conn->asyncStatus == PGASYNC_COPY_OUT)
			return;

		/*
		 * OK to try to read a message type code.
		 */
		conn->inCursor = conn->inStart;
		if (FUNC8(&id, conn))
			return;

		/*
		 * NOTIFY and NOTICE messages can happen in any state besides COPY
		 * OUT; always process them right away.
		 *
		 * Most other messages should only be processed while in BUSY state.
		 * (In particular, in READY state we hold off further parsing until
		 * the application collects the current PGresult.)
		 *
		 * However, if the state is IDLE then we got trouble; we need to deal
		 * with the unexpected message somehow.
		 */
		if (id == 'A')
		{
			if (FUNC3(conn))
				return;
		}
		else if (id == 'N')
		{
			if (FUNC6(conn, false))
				return;
		}
		else if (conn->asyncStatus != PGASYNC_BUSY)
		{
			/* If not IDLE state, just wait ... */
			if (conn->asyncStatus != PGASYNC_IDLE)
				return;

			/*
			 * Unexpected message in IDLE state; need to recover somehow.
			 * ERROR messages are displayed using the notice processor;
			 * anything else is just dropped on the floor after displaying a
			 * suitable warning notice.  (An ERROR is very possibly the
			 * backend telling us why it is about to close the connection, so
			 * we don't want to just discard it...)
			 */
			if (id == 'E')
			{
				if (FUNC6(conn, false /* treat as notice */ ))
					return;
			}
			else
			{
				FUNC10(&conn->noticeHooks,
								 "message type 0x%02x arrived from server while idle",
								 id);
				/* Discard the unexpected message; good idea?? */
				conn->inStart = conn->inEnd;
				break;
			}
		}
		else
		{
			/*
			 * In BUSY state, we can process everything.
			 */
			switch (id)
			{
				case 'C':		/* command complete */
					if (FUNC9(&conn->workBuffer, conn))
						return;
					if (conn->result == NULL)
					{
						conn->result = FUNC0(conn,
														   PGRES_COMMAND_OK);
						if (!conn->result)
						{
							FUNC12(&conn->errorMessage,
											  FUNC5("out of memory"));
							FUNC11(conn);
						}
					}
					if (conn->result)
					{
						FUNC13(conn->result->cmdStatus, conn->workBuffer.data,
								CMDSTATUS_LEN);
					}
					FUNC1(conn, conn->workBuffer.data);
					conn->asyncStatus = PGASYNC_READY;
					break;
				case 'E':		/* error return */
					if (FUNC6(conn, true))
						return;
					conn->asyncStatus = PGASYNC_READY;
					break;
				case 'Z':		/* backend is ready for new query */
					conn->asyncStatus = PGASYNC_IDLE;
					break;
				case 'I':		/* empty query */
					/* read and throw away the closing '\0' */
					if (FUNC8(&id, conn))
						return;
					if (id != '\0')
						FUNC10(&conn->noticeHooks,
										 "unexpected character %c following empty query response (\"I\" message)",
										 id);
					if (conn->result == NULL)
					{
						conn->result = FUNC0(conn,
														   PGRES_EMPTY_QUERY);
						if (!conn->result)
						{
							FUNC12(&conn->errorMessage,
											  FUNC5("out of memory"));
							FUNC11(conn);
						}
					}
					conn->asyncStatus = PGASYNC_READY;
					break;
				case 'K':		/* secret key data from the backend */

					/*
					 * This is expected only during backend startup, but it's
					 * just as easy to handle it as part of the main loop.
					 * Save the data and continue processing.
					 */
					if (FUNC7(&(conn->be_pid), 4, conn))
						return;
					if (FUNC7(&(conn->be_key), 4, conn))
						return;
					break;
				case 'P':		/* synchronous (normal) portal */
					if (FUNC9(&conn->workBuffer, conn))
						return;
					/* We pretty much ignore this message type... */
					break;
				case 'T':		/* row descriptions (start of query results) */
					if (conn->result == NULL)
					{
						/* First 'T' in a query sequence */
						if (FUNC4(conn))
							return;
						/* getRowDescriptions() moves inStart itself */
						continue;
					}
					else
					{
						/*
						 * A new 'T' message is treated as the start of
						 * another PGresult.  (It is not clear that this is
						 * really possible with the current backend.) We stop
						 * parsing until the application accepts the current
						 * result.
						 */
						conn->asyncStatus = PGASYNC_READY;
						return;
					}
					break;
				case 'D':		/* ASCII data tuple */
					if (conn->result != NULL)
					{
						/* Read another tuple of a normal query response */
						if (FUNC2(conn, false))
							return;
						/* getAnotherTuple() moves inStart itself */
						continue;
					}
					else
					{
						FUNC10(&conn->noticeHooks,
										 "server sent data (\"D\" message) without prior row description (\"T\" message)");
						/* Discard the unexpected message; good idea?? */
						conn->inStart = conn->inEnd;
						return;
					}
					break;
				case 'B':		/* Binary data tuple */
					if (conn->result != NULL)
					{
						/* Read another tuple of a normal query response */
						if (FUNC2(conn, true))
							return;
						/* getAnotherTuple() moves inStart itself */
						continue;
					}
					else
					{
						FUNC10(&conn->noticeHooks,
										 "server sent binary data (\"B\" message) without prior row description (\"T\" message)");
						/* Discard the unexpected message; good idea?? */
						conn->inStart = conn->inEnd;
						return;
					}
					break;
				case 'G':		/* Start Copy In */
					conn->asyncStatus = PGASYNC_COPY_IN;
					break;
				case 'H':		/* Start Copy Out */
					conn->asyncStatus = PGASYNC_COPY_OUT;
					break;

					/*
					 * Don't need to process CopyBothResponse here because it
					 * never arrives from the server during protocol 2.0.
					 */
				default:
					FUNC12(&conn->errorMessage,
									  FUNC5(
													"unexpected response from server; first received character was \"%c\"\n"),
									  id);
					/* build an error result holding the error message */
					FUNC11(conn);
					/* Discard the unexpected message; good idea?? */
					conn->inStart = conn->inEnd;
					conn->asyncStatus = PGASYNC_READY;
					return;
			}					/* switch on protocol character */
		}
		/* Successfully consumed this message */
		conn->inStart = conn->inCursor;
	}
}