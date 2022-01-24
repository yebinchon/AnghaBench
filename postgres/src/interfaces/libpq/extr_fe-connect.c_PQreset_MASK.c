#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* conn; } ;
struct TYPE_10__ {int nEvents; TYPE_1__* events; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  status; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; int /*<<< orphan*/  passThrough; int /*<<< orphan*/  (* proc ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ PGconn ;
typedef  TYPE_3__ PGEventConnReset ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_BAD ; 
 int /*<<< orphan*/  PGEVT_CONNRESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC6(PGconn *conn)
{
	if (conn)
	{
		FUNC0(conn);

		if (FUNC2(conn) && FUNC1(conn))
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
					FUNC4(&conn->errorMessage,
									  FUNC3("PGEventProc \"%s\" failed during PGEVT_CONNRESET event\n"),
									  conn->events[i].name);
					break;
				}
			}
		}
	}
}