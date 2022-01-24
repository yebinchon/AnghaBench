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
struct pg_tm {int tm_isdst; } ;
typedef  int /*<<< orphan*/  pg_tz ;
typedef  int /*<<< orphan*/  pg_time_t ;
typedef  int /*<<< orphan*/  fsec_t ;
typedef  int /*<<< orphan*/  TimestampTz ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC1 (struct pg_tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,struct pg_tm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(TimestampTz ts, const char *abbr,
								pg_tz *tzp, int *isdst)
{
	pg_time_t	t = FUNC6(ts);
	int			zone_offset;
	int			abbr_offset;
	int			tz;
	struct pg_tm tm;
	fsec_t		fsec;

	/*
	 * If the abbrev matches anything in the zone data, this is pretty easy.
	 */
	if (FUNC0(t, abbr, tzp,
											  &abbr_offset, isdst))
		return abbr_offset;

	/*
	 * Else, break down the timestamp so we can use DetermineTimeZoneOffset.
	 */
	if (FUNC5(ts, &tz, &tm, &fsec, NULL, tzp) != 0)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
				 FUNC4("timestamp out of range")));

	zone_offset = FUNC1(&tm, tzp);
	*isdst = tm.tm_isdst;
	return zone_offset;
}