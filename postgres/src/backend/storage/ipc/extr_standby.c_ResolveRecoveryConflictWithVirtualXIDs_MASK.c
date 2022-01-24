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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  VirtualTransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  ProcSignalReason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  STANDBY_INITIAL_WAIT_US ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 () ; 
 char* FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (long) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  standbyWait_us ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ update_process_title ; 

__attribute__((used)) static void
FUNC14(VirtualTransactionId *waitlist,
									   ProcSignalReason reason)
{
	TimestampTz waitStart;
	char	   *new_status;

	/* Fast exit, to avoid a kernel call if there's no work to be done. */
	if (!FUNC4(*waitlist))
		return;

	waitStart = FUNC2();
	new_status = NULL;			/* we haven't changed the ps display */

	while (FUNC4(*waitlist))
	{
		/* reset standbyWait_us for each xact we wait for */
		standbyWait_us = STANDBY_INITIAL_WAIT_US;

		/* wait until the virtual xid is gone */
		while (!FUNC5(*waitlist, false))
		{
			/*
			 * Report via ps if we have been waiting for more than 500 msec
			 * (should that be configurable?)
			 */
			if (update_process_title && new_status == NULL &&
				FUNC3(waitStart, FUNC2(),
										   500))
			{
				const char *old_status;
				int			len;

				old_status = FUNC7(&len);
				new_status = (char *) FUNC9(len + 8 + 1);
				FUNC8(new_status, old_status, len);
				FUNC13(new_status + len, " waiting");
				FUNC12(new_status, false);
				new_status[len] = '\0'; /* truncate off " waiting" */
			}

			/* Is it time to kill it? */
			if (FUNC6())
			{
				pid_t		pid;

				/*
				 * Now find out who to throw out of the balloon.
				 */
				FUNC0(FUNC4(*waitlist));
				pid = FUNC1(*waitlist, reason);

				/*
				 * Wait a little bit for it to die so that we avoid flooding
				 * an unresponsive backend when system is heavily loaded.
				 */
				if (pid != 0)
					FUNC11(5000L);
			}
		}

		/* The virtual transaction is gone now, wait for the next one */
		waitlist++;
	}

	/* Reset ps display if we changed it */
	if (new_status)
	{
		FUNC12(new_status, false);
		FUNC10(new_status);
	}
}