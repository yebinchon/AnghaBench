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
typedef  scalar_t__ timestamp ;
typedef  scalar_t__ time_t ;
struct tm {int tm_year; int tm_isdst; int tm_gmtoff; char* tm_zone; scalar_t__ tm_yday; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; int /*<<< orphan*/  tm_sec; } ;
typedef  scalar_t__ int64 ;
typedef  int /*<<< orphan*/  fsec_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int SECS_PER_HOUR ; 
 int TIMEZONE_GLOBAL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 char** TZNAME_GLOBAL ; 
 scalar_t__ USECS_PER_DAY ; 
 scalar_t__ USECS_PER_SEC ; 
 scalar_t__ FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int*,scalar_t__*,int /*<<< orphan*/ *) ; 
 struct tm* FUNC6 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC7(timestamp dt, int *tzp, struct tm *tm, fsec_t *fsec, const char **tzn)
{
	int64		dDate,
				date0;
	int64		time;
#if defined(HAVE_STRUCT_TM_TM_ZONE) || defined(HAVE_INT_TIMEZONE)
	time_t		utime;
	struct tm  *tx;
#endif

	date0 = FUNC3(2000, 1, 1);

	time = dt;
	FUNC2(time, dDate, USECS_PER_DAY);

	if (time < FUNC0(0))
	{
		time += USECS_PER_DAY;
		dDate -= 1;
	}

	/* add offset to go from J2000 back to standard Julian date */
	dDate += date0;

	/* Julian day routine does not work for negative Julian days */
	if (dDate < 0 || dDate > (timestamp) INT_MAX)
		return -1;

	FUNC5((int) dDate, &tm->tm_year, &tm->tm_mon, &tm->tm_mday);
	FUNC4(time, &tm->tm_hour, &tm->tm_min, &tm->tm_sec, fsec);

	if (tzp != NULL)
	{
		/*
		 * Does this fall within the capabilities of the localtime()
		 * interface? Then use this to rotate to the local time zone.
		 */
		if (FUNC1(tm->tm_year, tm->tm_mon, tm->tm_mday))
		{
#if defined(HAVE_STRUCT_TM_TM_ZONE) || defined(HAVE_INT_TIMEZONE)

			utime = dt / USECS_PER_SEC +
				((date0 - date2j(1970, 1, 1)) * INT64CONST(86400));

			tx = localtime(&utime);
			tm->tm_year = tx->tm_year + 1900;
			tm->tm_mon = tx->tm_mon + 1;
			tm->tm_mday = tx->tm_mday;
			tm->tm_hour = tx->tm_hour;
			tm->tm_min = tx->tm_min;
			tm->tm_isdst = tx->tm_isdst;

#if defined(HAVE_STRUCT_TM_TM_ZONE)
			tm->tm_gmtoff = tx->tm_gmtoff;
			tm->tm_zone = tx->tm_zone;

			*tzp = -tm->tm_gmtoff;	/* tm_gmtoff is Sun/DEC-ism */
			if (tzn != NULL)
				*tzn = tm->tm_zone;
#elif defined(HAVE_INT_TIMEZONE)
			*tzp = (tm->tm_isdst > 0) ? TIMEZONE_GLOBAL - SECS_PER_HOUR : TIMEZONE_GLOBAL;
			if (tzn != NULL)
				*tzn = TZNAME_GLOBAL[(tm->tm_isdst > 0)];
#endif
#else							/* not (HAVE_STRUCT_TM_TM_ZONE || HAVE_INT_TIMEZONE) */
			*tzp = 0;
			/* Mark this as *no* time zone available */
			tm->tm_isdst = -1;
			if (tzn != NULL)
				*tzn = NULL;
#endif
		}
		else
		{
			*tzp = 0;
			/* Mark this as *no* time zone available */
			tm->tm_isdst = -1;
			if (tzn != NULL)
				*tzn = NULL;
		}
	}
	else
	{
		tm->tm_isdst = -1;
		if (tzn != NULL)
			*tzn = NULL;
	}

	tm->tm_yday = dDate - FUNC3(tm->tm_year, 1, 1) + 1;

	return 0;
}