#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ status; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  asyncStatus; int /*<<< orphan*/  pversion; } ;
struct TYPE_8__ {scalar_t__ resultStatus; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGconn ;
typedef  scalar_t__ ExecStatusType ;

/* Variables and functions */
 scalar_t__ CONNECTION_BAD ; 
 int /*<<< orphan*/  PGASYNC_BUSY ; 
 scalar_t__ PGRES_COPY_BOTH ; 
 scalar_t__ PGRES_COPY_IN ; 
 scalar_t__ PGRES_COPY_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6(PGconn *conn)
{
	PGresult   *result;

	if (!conn)
		return false;

	/*
	 * Silently discard any prior query result that application didn't eat.
	 * This is probably poor design, but it's here for backward compatibility.
	 */
	while ((result = FUNC2(conn)) != NULL)
	{
		ExecStatusType resultStatus = result->resultStatus;

		FUNC1(result);		/* only need its status */
		if (resultStatus == PGRES_COPY_IN)
		{
			if (FUNC0(conn->pversion) >= 3)
			{
				/* In protocol 3, we can get out of a COPY IN state */
				if (FUNC3(conn,
								 FUNC4("COPY terminated by new PQexec")) < 0)
					return false;
				/* keep waiting to swallow the copy's failure message */
			}
			else
			{
				/* In older protocols we have to punt */
				FUNC5(&conn->errorMessage,
								  FUNC4("COPY IN state must be terminated first\n"));
				return false;
			}
		}
		else if (resultStatus == PGRES_COPY_OUT)
		{
			if (FUNC0(conn->pversion) >= 3)
			{
				/*
				 * In protocol 3, we can get out of a COPY OUT state: we just
				 * switch back to BUSY and allow the remaining COPY data to be
				 * dropped on the floor.
				 */
				conn->asyncStatus = PGASYNC_BUSY;
				/* keep waiting to swallow the copy's completion message */
			}
			else
			{
				/* In older protocols we have to punt */
				FUNC5(&conn->errorMessage,
								  FUNC4("COPY OUT state must be terminated first\n"));
				return false;
			}
		}
		else if (resultStatus == PGRES_COPY_BOTH)
		{
			/* We don't allow PQexec during COPY BOTH */
			FUNC5(&conn->errorMessage,
							  FUNC4("PQexec not allowed during COPY BOTH\n"));
			return false;
		}
		/* check for loss of connection, too */
		if (conn->status == CONNECTION_BAD)
			return false;
	}

	/* OK to send a command */
	return true;
}