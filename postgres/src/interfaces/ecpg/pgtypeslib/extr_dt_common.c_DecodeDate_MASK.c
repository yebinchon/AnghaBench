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
struct tm {int tm_mon; int tm_year; } ;
typedef  int /*<<< orphan*/  fsec_t ;

/* Variables and functions */
#define  ADBC 129 
 int BC ; 
 int DOY ; 
 int DTK_DATE_M ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,int,int*,struct tm*,int /*<<< orphan*/ *,int*,int) ; 
 int FUNC2 (int,char*,int*) ; 
 int IGNORE_DTF ; 
 int MAXDATEFIELDS ; 
#define  MONTH 128 
 int TZ ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(char *str, int fmask, int *tmask, struct tm *tm, bool EuroDates)
{
	fsec_t		fsec;

	int			nf = 0;
	int			i,
				len;
	bool		bc = false;
	bool		is2digits = false;
	int			type,
				val,
				dmask = 0;
	char	   *field[MAXDATEFIELDS];

	/* parse this string... */
	while (*str != '\0' && nf < MAXDATEFIELDS)
	{
		/* skip field separators */
		while (!FUNC3((unsigned char) *str))
			str++;

		field[nf] = str;
		if (FUNC5((unsigned char) *str))
		{
			while (FUNC5((unsigned char) *str))
				str++;
		}
		else if (FUNC4((unsigned char) *str))
		{
			while (FUNC4((unsigned char) *str))
				str++;
		}

		/* Just get rid of any non-digit, non-alpha characters... */
		if (*str != '\0')
			*str++ = '\0';
		nf++;
	}

#if 0
	/* don't allow too many fields */
	if (nf > 3)
		return -1;
#endif

	*tmask = 0;

	/* look first for text fields, since that will be unambiguous month */
	for (i = 0; i < nf; i++)
	{
		if (FUNC4((unsigned char) *field[i]))
		{
			type = FUNC2(i, field[i], &val);
			if (type == IGNORE_DTF)
				continue;

			dmask = FUNC0(type);
			switch (type)
			{
				case MONTH:
					tm->tm_mon = val;
					break;

				case ADBC:
					bc = (val == BC);
					break;

				default:
					return -1;
			}
			if (fmask & dmask)
				return -1;

			fmask |= dmask;
			*tmask |= dmask;

			/* mark this field as being completed */
			field[i] = NULL;
		}
	}

	/* now pick up remaining numeric fields */
	for (i = 0; i < nf; i++)
	{
		if (field[i] == NULL)
			continue;

		if ((len = FUNC6(field[i])) <= 0)
			return -1;

		if (FUNC1(len, field[i], fmask, &dmask, tm, &fsec, &is2digits, EuroDates) != 0)
			return -1;

		if (fmask & dmask)
			return -1;

		fmask |= dmask;
		*tmask |= dmask;
	}

	if ((fmask & ~(FUNC0(DOY) | FUNC0(TZ))) != DTK_DATE_M)
		return -1;

	/* there is no year zero in AD/BC notation; i.e. "1 BC" == year 0 */
	if (bc)
	{
		if (tm->tm_year > 0)
			tm->tm_year = -(tm->tm_year - 1);
		else
			return -1;
	}
	else if (is2digits)
	{
		if (tm->tm_year < 70)
			tm->tm_year += 2000;
		else if (tm->tm_year < 100)
			tm->tm_year += 1900;
	}

	return 0;
}