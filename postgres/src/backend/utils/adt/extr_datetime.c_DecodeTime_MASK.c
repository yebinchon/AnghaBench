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
struct pg_tm {int tm_hour; int tm_min; int tm_sec; } ;
typedef  scalar_t__ fsec_t ;

/* Variables and functions */
 int DTERR_BAD_FORMAT ; 
 int DTERR_FIELD_OVERFLOW ; 
 int DTK_TIME_M ; 
 scalar_t__ ERANGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MINS_PER_HOUR ; 
 int /*<<< orphan*/  MINUTE ; 
 int FUNC2 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  SECOND ; 
 int SECS_PER_MINUTE ; 
 scalar_t__ USECS_PER_SEC ; 
 scalar_t__ errno ; 
 void* FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC4(char *str, int fmask, int range,
		   int *tmask, struct pg_tm *tm, fsec_t *fsec)
{
	char	   *cp;
	int			dterr;

	*tmask = DTK_TIME_M;

	errno = 0;
	tm->tm_hour = FUNC3(str, &cp, 10);
	if (errno == ERANGE)
		return DTERR_FIELD_OVERFLOW;
	if (*cp != ':')
		return DTERR_BAD_FORMAT;
	errno = 0;
	tm->tm_min = FUNC3(cp + 1, &cp, 10);
	if (errno == ERANGE)
		return DTERR_FIELD_OVERFLOW;
	if (*cp == '\0')
	{
		tm->tm_sec = 0;
		*fsec = 0;
		/* If it's a MINUTE TO SECOND interval, take 2 fields as being mm:ss */
		if (range == (FUNC1(MINUTE) | FUNC1(SECOND)))
		{
			tm->tm_sec = tm->tm_min;
			tm->tm_min = tm->tm_hour;
			tm->tm_hour = 0;
		}
	}
	else if (*cp == '.')
	{
		/* always assume mm:ss.sss is MINUTE TO SECOND */
		dterr = FUNC2(cp, fsec);
		if (dterr)
			return dterr;
		tm->tm_sec = tm->tm_min;
		tm->tm_min = tm->tm_hour;
		tm->tm_hour = 0;
	}
	else if (*cp == ':')
	{
		errno = 0;
		tm->tm_sec = FUNC3(cp + 1, &cp, 10);
		if (errno == ERANGE)
			return DTERR_FIELD_OVERFLOW;
		if (*cp == '\0')
			*fsec = 0;
		else if (*cp == '.')
		{
			dterr = FUNC2(cp, fsec);
			if (dterr)
				return dterr;
		}
		else
			return DTERR_BAD_FORMAT;
	}
	else
		return DTERR_BAD_FORMAT;

	/* do a sanity check */
	if (tm->tm_hour < 0 || tm->tm_min < 0 || tm->tm_min > MINS_PER_HOUR - 1 ||
		tm->tm_sec < 0 || tm->tm_sec > SECS_PER_MINUTE ||
		*fsec < FUNC0(0) ||
		*fsec > USECS_PER_SEC)
		return DTERR_FIELD_OVERFLOW;

	return 0;
}