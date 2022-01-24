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
typedef  int timestamp ;
struct tm {int tm_year; int tm_mon; int tm_mday; int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; } ;
typedef  int int64 ;
typedef  int /*<<< orphan*/  fsec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int USECS_PER_DAY ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct tm *tm, fsec_t fsec, int *tzp, timestamp * result)
{
	int			dDate;
	int64		time;

	/* Prevent overflow in Julian-day routines */
	if (!FUNC0(tm->tm_year, tm->tm_mon, tm->tm_mday))
		return -1;

	dDate = FUNC2(tm->tm_year, tm->tm_mon, tm->tm_mday) - FUNC2(2000, 1, 1);
	time = FUNC4(tm->tm_hour, tm->tm_min, tm->tm_sec, fsec);
	*result = (dDate * USECS_PER_DAY) + time;
	/* check for major overflow */
	if ((*result - time) / USECS_PER_DAY != dDate)
		return -1;
	/* check for just-barely overflow (okay except time-of-day wraps) */
	/* caution: we want to allow 1999-12-31 24:00:00 */
	if ((*result < 0 && dDate > 0) ||
		(*result > 0 && dDate < -1))
		return -1;
	if (tzp != NULL)
		*result = FUNC3(*result, -(*tzp));

	/* final range check catches just-out-of-range timestamps */
	if (!FUNC1(*result))
		return -1;

	return 0;
}