#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* conn; } ;
struct TYPE_8__ {int nEvents; TYPE_1__* events; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  status; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  passThrough; int /*<<< orphan*/  (* proc ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ PostgresPollingStatusType ;
typedef  TYPE_2__ PGconn ;
typedef  TYPE_3__ PGEventConnReset ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_BAD ; 
 int /*<<< orphan*/  PGEVT_CONNRESET ; 
 scalar_t__ PGRES_POLLING_FAILED ; 
 scalar_t__ PGRES_POLLING_OK ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

PostgresPollingStatusType
FUNC4(PGconn *conn)
{
	if (conn)
	{
		PostgresPollingStatusType status = FUNC0(conn);

		if (status == PGRES_POLLING_OK)
		{
			/*
			 * Notify event procs of successful reset.  We treat an event proc
			 * failure as disabling the connection ... good idea?
			 */
			int			i;

			for (i = 0; i < conn->nEvents; i++)
			{
				PGEventConnReset evt;

				evt.conn = conn;
				if (!conn->events[i].proc(PGEVT_CONNRESET, &evt,
										  conn->events[i].passThrough))
				{
					conn->status = CONNECTION_BAD;
					FUNC2(&conn->errorMessage,
									  FUNC1("PGEventProc \"%s\" failed during PGEVT_CONNRESET event\n"),
									  conn->events[i].name);
					return PGRES_POLLING_FAILED;
				}
			}
		}

		return status;
	}

	return PGRES_POLLING_FAILED;
}