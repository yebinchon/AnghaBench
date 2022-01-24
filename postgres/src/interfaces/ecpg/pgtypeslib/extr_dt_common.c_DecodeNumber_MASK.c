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
struct tm {int tm_yday; int tm_year; int tm_mon; int tm_mday; } ;
typedef  int /*<<< orphan*/  fsec_t ;

/* Variables and functions */
 int /*<<< orphan*/  DAY ; 
 int /*<<< orphan*/  DOY ; 
 int DTK_DATE_M ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*,int,int*,struct tm*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  MONTH ; 
 int MONTHS_PER_YEAR ; 
 int /*<<< orphan*/  YEAR ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int FUNC5 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC6(int flen, char *str, int fmask,
			 int *tmask, struct tm *tm, fsec_t *fsec, bool *is2digits, bool EuroDates)
{
	int			val;
	char	   *cp;

	*tmask = 0;

	val = FUNC5(str, &cp, 10);
	if (cp == str)
		return -1;

	if (*cp == '.')
	{
		/*
		 * More than two digits? Then could be a date or a run-together time:
		 * 2001.360 20011225 040506.789
		 */
		if (cp - str > 2)
			return FUNC1(flen, str, (fmask | DTK_DATE_M),
									 tmask, tm, fsec, is2digits);

		*fsec = FUNC4(cp, &cp);
		if (*cp != '\0')
			return -1;
	}
	else if (*cp != '\0')
		return -1;

	/* Special case day of year? */
	if (flen == 3 && (fmask & FUNC0(YEAR)) && val >= 1 && val <= 366)
	{
		*tmask = (FUNC0(DOY) | FUNC0(MONTH) | FUNC0(DAY));
		tm->tm_yday = val;
		FUNC3(FUNC2(tm->tm_year, 1, 1) + tm->tm_yday - 1,
			   &tm->tm_year, &tm->tm_mon, &tm->tm_mday);
	}

	/***
	 * Enough digits to be unequivocal year? Used to test for 4 digits or
	 * more, but we now test first for a three-digit doy so anything
	 * bigger than two digits had better be an explicit year.
	 * - thomas 1999-01-09
	 * Back to requiring a 4 digit year. We accept a two digit
	 * year farther down. - thomas 2000-03-28
	 ***/
	else if (flen >= 4)
	{
		*tmask = FUNC0(YEAR);

		/* already have a year? then see if we can substitute... */
		if ((fmask & FUNC0(YEAR)) && !(fmask & FUNC0(DAY)) &&
			tm->tm_year >= 1 && tm->tm_year <= 31)
		{
			tm->tm_mday = tm->tm_year;
			*tmask = FUNC0(DAY);
		}

		tm->tm_year = val;
	}

	/* already have year? then could be month */
	else if ((fmask & FUNC0(YEAR)) && !(fmask & FUNC0(MONTH)) && val >= 1 && val <= MONTHS_PER_YEAR)
	{
		*tmask = FUNC0(MONTH);
		tm->tm_mon = val;
	}
	/* no year and EuroDates enabled? then could be day */
	else if ((EuroDates || (fmask & FUNC0(MONTH))) &&
			 !(fmask & FUNC0(YEAR)) && !(fmask & FUNC0(DAY)) &&
			 val >= 1 && val <= 31)
	{
		*tmask = FUNC0(DAY);
		tm->tm_mday = val;
	}
	else if (!(fmask & FUNC0(MONTH)) && val >= 1 && val <= MONTHS_PER_YEAR)
	{
		*tmask = FUNC0(MONTH);
		tm->tm_mon = val;
	}
	else if (!(fmask & FUNC0(DAY)) && val >= 1 && val <= 31)
	{
		*tmask = FUNC0(DAY);
		tm->tm_mday = val;
	}

	/*
	 * Check for 2 or 4 or more digits, but currently we reach here only if
	 * two digits. - thomas 2000-03-28
	 */
	else if (!(fmask & FUNC0(YEAR)) && (flen >= 4 || flen == 2))
	{
		*tmask = FUNC0(YEAR);
		tm->tm_year = val;

		/* adjust ONLY if exactly two digits... */
		*is2digits = (flen == 2);
	}
	else
		return -1;

	return 0;
}