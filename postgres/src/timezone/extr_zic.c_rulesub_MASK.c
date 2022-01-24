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
struct rule {int r_month; int r_todisstd; int r_todisut; int r_loyear; int r_hiyear; scalar_t__ r_dycode; int r_wday; int r_dayofmonth; int /*<<< orphan*/ * r_yrtype; int /*<<< orphan*/  r_hiwasnum; int /*<<< orphan*/  r_lowasnum; int /*<<< orphan*/  r_tod; } ;
struct lookup {int l_value; } ;

/* Variables and functions */
 scalar_t__ DC_DOM ; 
 scalar_t__ DC_DOWGEQ ; 
 void* DC_DOWLEQ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
#define  YR_MAXIMUM 130 
#define  YR_MINIMUM 129 
#define  YR_ONLY 128 
 void* ZIC_MAX ; 
 void* ZIC_MIN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  begin_years ; 
 struct lookup* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  end_years ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  lasts ; 
 scalar_t__** len_months ; 
 int FUNC8 (char) ; 
 int /*<<< orphan*/  mon_names ; 
 char* progname ; 
 int FUNC9 (char const*,char*,int*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (char*,char) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  wday_names ; 

__attribute__((used)) static void
FUNC13(struct rule *rp, const char *loyearp, const char *hiyearp,
		const char *typep, const char *monthp, const char *dayp,
		const char *timep)
{
	const struct lookup *lp;
	const char *cp;
	char	   *dp;
	char	   *ep;
	char		xs;

	/* PG: year_tmp is to avoid sscanf portability issues */
	int			year_tmp;

	if ((lp = FUNC1(monthp, mon_names)) == NULL)
	{
		FUNC3(FUNC0("invalid month name"));
		return;
	}
	rp->r_month = lp->l_value;
	rp->r_todisstd = false;
	rp->r_todisut = false;
	dp = FUNC2(timep);
	if (*dp != '\0')
	{
		ep = dp + FUNC11(dp) - 1;
		switch (FUNC8(*ep))
		{
			case 's':			/* Standard */
				rp->r_todisstd = true;
				rp->r_todisut = false;
				*ep = '\0';
				break;
			case 'w':			/* Wall */
				rp->r_todisstd = false;
				rp->r_todisut = false;
				*ep = '\0';
				break;
			case 'g':			/* Greenwich */
			case 'u':			/* Universal */
			case 'z':			/* Zulu */
				rp->r_todisstd = true;
				rp->r_todisut = true;
				*ep = '\0';
				break;
		}
	}
	rp->r_tod = FUNC7(dp, FUNC0("invalid time of day"));
	FUNC6(dp);

	/*
	 * Year work.
	 */
	cp = loyearp;
	lp = FUNC1(cp, begin_years);
	rp->r_lowasnum = lp == NULL;
	if (!rp->r_lowasnum)
		switch (lp->l_value)
		{
			case YR_MINIMUM:
				rp->r_loyear = ZIC_MIN;
				break;
			case YR_MAXIMUM:
				rp->r_loyear = ZIC_MAX;
				break;
			default:			/* "cannot happen" */
				FUNC5(stderr,
						FUNC0("%s: panic: Invalid l_value %d\n"),
						progname, lp->l_value);
				FUNC4(EXIT_FAILURE);
		}
	else if (FUNC9(cp, "%d%c", &year_tmp, &xs) == 1)
		rp->r_loyear = year_tmp;
	else
	{
		FUNC3(FUNC0("invalid starting year"));
		return;
	}
	cp = hiyearp;
	lp = FUNC1(cp, end_years);
	rp->r_hiwasnum = lp == NULL;
	if (!rp->r_hiwasnum)
		switch (lp->l_value)
		{
			case YR_MINIMUM:
				rp->r_hiyear = ZIC_MIN;
				break;
			case YR_MAXIMUM:
				rp->r_hiyear = ZIC_MAX;
				break;
			case YR_ONLY:
				rp->r_hiyear = rp->r_loyear;
				break;
			default:			/* "cannot happen" */
				FUNC5(stderr,
						FUNC0("%s: panic: Invalid l_value %d\n"),
						progname, lp->l_value);
				FUNC4(EXIT_FAILURE);
		}
	else if (FUNC9(cp, "%d%c", &year_tmp, &xs) == 1)
		rp->r_hiyear = year_tmp;
	else
	{
		FUNC3(FUNC0("invalid ending year"));
		return;
	}
	if (rp->r_loyear > rp->r_hiyear)
	{
		FUNC3(FUNC0("starting year greater than ending year"));
		return;
	}
	if (*typep == '\0')
		rp->r_yrtype = NULL;
	else
	{
		if (rp->r_loyear == rp->r_hiyear)
		{
			FUNC3(FUNC0("typed single year"));
			return;
		}
		FUNC12(FUNC0("year type \"%s\" is obsolete; use \"-\" instead"),
				typep);
		rp->r_yrtype = FUNC2(typep);
	}

	/*
	 * Day work. Accept things such as: 1 lastSunday last-Sunday
	 * (undocumented; warn about this) Sun<=20 Sun>=7
	 */
	dp = FUNC2(dayp);
	if ((lp = FUNC1(dp, lasts)) != NULL)
	{
		rp->r_dycode = DC_DOWLEQ;
		rp->r_wday = lp->l_value;
		rp->r_dayofmonth = len_months[1][rp->r_month];
	}
	else
	{
		if ((ep = FUNC10(dp, '<')) != NULL)
			rp->r_dycode = DC_DOWLEQ;
		else if ((ep = FUNC10(dp, '>')) != NULL)
			rp->r_dycode = DC_DOWGEQ;
		else
		{
			ep = dp;
			rp->r_dycode = DC_DOM;
		}
		if (rp->r_dycode != DC_DOM)
		{
			*ep++ = 0;
			if (*ep++ != '=')
			{
				FUNC3(FUNC0("invalid day of month"));
				FUNC6(dp);
				return;
			}
			if ((lp = FUNC1(dp, wday_names)) == NULL)
			{
				FUNC3(FUNC0("invalid weekday name"));
				FUNC6(dp);
				return;
			}
			rp->r_wday = lp->l_value;
		}
		if (FUNC9(ep, "%d%c", &rp->r_dayofmonth, &xs) != 1 ||
			rp->r_dayofmonth <= 0 ||
			(rp->r_dayofmonth > len_months[1][rp->r_month]))
		{
			FUNC3(FUNC0("invalid day of month"));
			FUNC6(dp);
			return;
		}
	}
	FUNC6(dp);
}