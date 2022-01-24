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
struct pg_tm {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
typedef  int /*<<< orphan*/  fsec_t ;
typedef  scalar_t__ Timestamp ;
typedef  scalar_t__ TimeOffset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ POSTGRES_EPOCH_JDATE ; 
 scalar_t__ USECS_PER_DAY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct pg_tm *tm, fsec_t fsec, int *tzp, Timestamp *result)
{
	TimeOffset	date;
	TimeOffset	time;

	/* Prevent overflow in Julian-day routines */
	if (!FUNC0(tm->tm_year, tm->tm_mon, tm->tm_mday))
	{
		*result = 0;			/* keep compiler quiet */
		return -1;
	}

	date = FUNC2(tm->tm_year, tm->tm_mon, tm->tm_mday) - POSTGRES_EPOCH_JDATE;
	time = FUNC4(tm->tm_hour, tm->tm_min, tm->tm_sec, fsec);

	*result = date * USECS_PER_DAY + time;
	/* check for major overflow */
	if ((*result - time) / USECS_PER_DAY != date)
	{
		*result = 0;			/* keep compiler quiet */
		return -1;
	}
	/* check for just-barely overflow (okay except time-of-day wraps) */
	/* caution: we want to allow 1999-12-31 24:00:00 */
	if ((*result < 0 && date > 0) ||
		(*result > 0 && date < -1))
	{
		*result = 0;			/* keep compiler quiet */
		return -1;
	}
	if (tzp != NULL)
		*result = FUNC3(*result, -(*tzp));

	/* final range check catches just-out-of-range timestamps */
	if (!FUNC1(*result))
	{
		*result = 0;			/* keep compiler quiet */
		return -1;
	}

	return 0;
}