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
struct timeval {long tv_sec; long tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

void
FUNC2(long microsec)
{
	if (microsec > 0)
	{
#ifndef WIN32
		struct timeval delay;

		delay.tv_sec = microsec / 1000000L;
		delay.tv_usec = microsec % 1000000L;
		(void) FUNC1(0, NULL, NULL, NULL, &delay);
#else
		SleepEx((microsec < 500 ? 1 : (microsec + 500) / 1000), FALSE);
#endif
	}
}