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
typedef  int uint64 ;
typedef  int /*<<< orphan*/  rseed ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  MyStartTime ; 
 scalar_t__ MyStartTimestamp ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void
FUNC5(void)
{
	unsigned int rseed;

	MyProcPid = FUNC1();
	MyStartTimestamp = FUNC0();
	MyStartTime = FUNC4(MyStartTimestamp);

	/*
	 * Set a different seed for random() in every process.  We want something
	 * unpredictable, so if possible, use high-quality random bits for the
	 * seed.  Otherwise, fall back to a seed based on timestamp and PID.
	 */
	if (!FUNC2(&rseed, sizeof(rseed)))
	{
		/*
		 * Since PIDs and timestamps tend to change more frequently in their
		 * least significant bits, shift the timestamp left to allow a larger
		 * total number of seeds in a given time period.  Since that would
		 * leave only 20 bits of the timestamp that cycle every ~1 second,
		 * also mix in some higher bits.
		 */
		rseed = ((uint64) MyProcPid) ^
			((uint64) MyStartTimestamp << 12) ^
			((uint64) MyStartTimestamp >> 20);
	}
	FUNC3(rseed);
}