#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_2__ {int /*<<< orphan*/  lastQueueFillWarn; } ;
typedef  int /*<<< orphan*/  QueuePosition ;
typedef  scalar_t__ BackendId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ InvalidPid ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ QUEUE_FIRST_LISTENER ; 
 int /*<<< orphan*/  QUEUE_FULL_WARN_INTERVAL ; 
 int /*<<< orphan*/  QUEUE_HEAD ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 TYPE_1__* asyncQueueControl ; 
 double FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,double) ; 

__attribute__((used)) static void
FUNC13(void)
{
	double		fillDegree;
	TimestampTz t;

	fillDegree = FUNC8();
	if (fillDegree < 0.5)
		return;

	t = FUNC1();

	if (FUNC7(asyncQueueControl->lastQueueFillWarn,
								   t, QUEUE_FULL_WARN_INTERVAL))
	{
		QueuePosition min = QUEUE_HEAD;
		int32		minPid = InvalidPid;

		for (BackendId i = QUEUE_FIRST_LISTENER; i > 0; i = FUNC4(i))
		{
			FUNC0(FUNC2(i) != InvalidPid);
			min = FUNC6(min, FUNC3(i));
			if (FUNC5(min, FUNC3(i)))
				minPid = FUNC2(i);
		}

		FUNC9(WARNING,
				(FUNC12("NOTIFY queue is %.0f%% full", fillDegree * 100),
				 (minPid != InvalidPid ?
				  FUNC10("The server process with PID %d is among those with the oldest transactions.", minPid)
				  : 0),
				 (minPid != InvalidPid ?
				  FUNC11("The NOTIFY queue cannot be emptied until that process ends its current transaction.")
				  : 0)));

		asyncQueueControl->lastQueueFillWarn = t;
	}
}