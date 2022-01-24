#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  MyLatch ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_LIBPQWALRECEIVER_RECEIVE ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_SOCKET_READABLE ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PGresult *
FUNC7(PGconn *streamConn)
{
	/*
	 * Collect data until PQgetResult is ready to get the result without
	 * blocking.
	 */
	while (FUNC2(streamConn))
	{
		int			rc;

		/*
		 * We don't need to break down the sleep into smaller increments,
		 * since we'll get interrupted by signals and can handle any
		 * interrupts here.
		 */
		rc = FUNC6(MyLatch,
							   WL_EXIT_ON_PM_DEATH | WL_SOCKET_READABLE |
							   WL_LATCH_SET,
							   FUNC3(streamConn),
							   0,
							   WAIT_EVENT_LIBPQWALRECEIVER_RECEIVE);

		/* Interrupted? */
		if (rc & WL_LATCH_SET)
		{
			FUNC5(MyLatch);
			FUNC4();
		}

		/* Consume whatever data is available from the socket */
		if (FUNC0(streamConn) == 0)
		{
			/* trouble; return NULL */
			return NULL;
		}
	}

	/* Now we can collect and return the next PGresult */
	return FUNC1(streamConn);
}