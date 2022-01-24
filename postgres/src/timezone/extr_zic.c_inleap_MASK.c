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
typedef  int zic_t ;
struct lookup {int l_value; } ;

/* Variables and functions */
 int EPOCH_YEAR ; 
 int LEAP_FIELDS ; 
 size_t LP_CORR ; 
 size_t LP_DAY ; 
 size_t LP_MONTH ; 
 size_t LP_ROLL ; 
 size_t LP_TIME ; 
 size_t LP_YEAR ; 
 int SECSPERDAY ; 
 int TM_JANUARY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct lookup* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  leap_types ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int) ; 
 int leapmaxyear ; 
 int leapminyear ; 
 int leapseen ; 
 int** len_months ; 
 int* len_years ; 
 int max_time ; 
 int min_time ; 
 int /*<<< orphan*/  mon_names ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (char const*,char*,int*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int FUNC9 (int,int) ; 

__attribute__((used)) static void
FUNC10(char **fields, int nfields)
{
	const char *cp;
	const struct lookup *lp;
	zic_t		i,
				j;

	/* PG: make year be int not zic_t to avoid sscanf portability issues */
	int			year;
	int			month,
				day;
	zic_t		dayoff,
				tod;
	zic_t		t;
	char		xs;

	if (nfields != LEAP_FIELDS)
	{
		FUNC2(FUNC0("wrong number of fields on Leap line"));
		return;
	}
	dayoff = 0;
	cp = fields[LP_YEAR];
	if (FUNC7(cp, "%d%c", &year, &xs) != 1)
	{
		/*
		 * Leapin' Lizards!
		 */
		FUNC2(FUNC0("invalid leaping year"));
		return;
	}
	if (!leapseen || leapmaxyear < year)
		leapmaxyear = year;
	if (!leapseen || leapminyear > year)
		leapminyear = year;
	leapseen = true;
	j = EPOCH_YEAR;
	while (j != year)
	{
		if (year > j)
		{
			i = len_years[FUNC4(j)];
			++j;
		}
		else
		{
			--j;
			i = -len_years[FUNC4(j)];
		}
		dayoff = FUNC6(dayoff, i);
	}
	if ((lp = FUNC1(fields[LP_MONTH], mon_names)) == NULL)
	{
		FUNC2(FUNC0("invalid month name"));
		return;
	}
	month = lp->l_value;
	j = TM_JANUARY;
	while (j != month)
	{
		i = len_months[FUNC4(year)][j];
		dayoff = FUNC6(dayoff, i);
		++j;
	}
	cp = fields[LP_DAY];
	if (FUNC7(cp, "%d%c", &day, &xs) != 1 ||
		day <= 0 || day > len_months[FUNC4(year)][month])
	{
		FUNC2(FUNC0("invalid day of month"));
		return;
	}
	dayoff = FUNC6(dayoff, day - 1);
	if (dayoff < min_time / SECSPERDAY)
	{
		FUNC2(FUNC0("time too small"));
		return;
	}
	if (dayoff > max_time / SECSPERDAY)
	{
		FUNC2(FUNC0("time too large"));
		return;
	}
	t = dayoff * SECSPERDAY;
	tod = FUNC3(fields[LP_TIME], FUNC0("invalid time of day"));
	cp = fields[LP_CORR];
	{
		bool		positive;
		int			count;

		if (FUNC8(cp, "") == 0)
		{						/* infile() turns "-" into "" */
			positive = false;
			count = 1;
		}
		else if (FUNC8(cp, "+") == 0)
		{
			positive = true;
			count = 1;
		}
		else
		{
			FUNC2(FUNC0("illegal CORRECTION field on Leap line"));
			return;
		}
		if ((lp = FUNC1(fields[LP_ROLL], leap_types)) == NULL)
		{
			FUNC2(FUNC0("illegal Rolling/Stationary field on Leap line"));
			return;
		}
		t = FUNC9(t, tod);
		if (t < 0)
		{
			FUNC2(FUNC0("leap second precedes Epoch"));
			return;
		}
		FUNC5(t, positive, lp->l_value, count);
	}
}