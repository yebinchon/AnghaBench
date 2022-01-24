#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {double zone; int /*<<< orphan*/  time; } ;
typedef  TYPE_1__ TimeTzADT ;
struct TYPE_6__ {double day; double month; int /*<<< orphan*/  time; } ;
typedef  int Oid ;
typedef  TYPE_2__ Interval ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  DATEOID 133 
 double DAYS_PER_YEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
#define  INTERVALOID 132 
 scalar_t__ MONTHS_PER_YEAR ; 
#define  TIMEOID 131 
#define  TIMESTAMPOID 130 
#define  TIMESTAMPTZOID 129 
#define  TIMETZOID 128 
 double USECS_PER_DAY ; 
 double FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static double
FUNC7(Datum value, Oid typid, bool *failure)
{
	switch (typid)
	{
		case TIMESTAMPOID:
			return FUNC4(value);
		case TIMESTAMPTZOID:
			return FUNC5(value);
		case DATEOID:
			return FUNC6(FUNC0(value));
		case INTERVALOID:
			{
				Interval   *interval = FUNC1(value);

				/*
				 * Convert the month part of Interval to days using assumed
				 * average month length of 365.25/12.0 days.  Not too
				 * accurate, but plenty good enough for our purposes.
				 */
				return interval->time + interval->day * (double) USECS_PER_DAY +
					interval->month * ((DAYS_PER_YEAR / (double) MONTHS_PER_YEAR) * USECS_PER_DAY);
			}
		case TIMEOID:
			return FUNC2(value);
		case TIMETZOID:
			{
				TimeTzADT  *timetz = FUNC3(value);

				/* use GMT-equivalent time */
				return (double) (timetz->time + (timetz->zone * 1000000.0));
			}
	}

	*failure = true;
	return 0;
}