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
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (short*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC7(void)
{
	short mdy[3] = { 11, 23, 1959 };
	char dbuf[11];
	date d;
	int r;

	FUNC0(1, stderr);

	r = FUNC6(mdy, &d);
	FUNC4("create: r: %d\n", r);
	if (r == 0)
	{
		FUNC5(d, dbuf);
		FUNC4("date: %s\n", dbuf);
	}

	/* input mask is mmddyyyy */
	FUNC3("12031994");
	FUNC3("9.6.1994");

	FUNC2(d, "mmddyy");
	FUNC2(d, "ddmmyy");
	FUNC2(d, "yymmdd");
	FUNC2(d, "yy/mm/dd");
	FUNC2(d, "yy mm dd");
	FUNC2(d, "yy.mm.dd");
	FUNC2(d, ".mm.yyyy.dd.");
	FUNC2(d, "mmm. dd, yyyy");
	FUNC2(d, "mmm dd yyyy");
	FUNC2(d, "yyyy dd mm");
	FUNC2(d, "ddd, mmm. dd, yyyy");
	FUNC2(d, "(ddd) mmm. dd, yyyy");

	FUNC1("ddmmyy", "21-2-54");
	FUNC1("ddmmyy", "2-12-54");
	FUNC1("ddmmyy", "20111954");
	FUNC1("ddmmyy", "130464");
	FUNC1("mmm.dd.yyyy", "MAR-12-1967");
	FUNC1("yy/mm/dd", "1954, February 3rd");
	FUNC1("mmm.dd.yyyy", "041269");
	FUNC1("yy/mm/dd", "In the year 2525, in the month of July, mankind will be alive on the 28th day");
	FUNC1("dd-mm-yy", "I said on the 28th of July in the year 2525");
	FUNC1("mmm.dd.yyyy", "9/14/58");
	FUNC1("yy/mm/dd", "47/03/29");
	FUNC1("mmm.dd.yyyy", "oct 28 1975");
	FUNC1("mmddyy", "Nov 14th, 1985");
	/* ok: still contains dd mm yy */
	FUNC1("bladdfoommbaryybong", "20/11/1954");
	/* 1994 is not a leap year, it accepts the date as 01-03-1994 */
	FUNC1("ddmmyy", "29-02-1994");

	/* ECPG_INFORMIX_ENOTDMY, need "dd", "mm" and "yy" */
	FUNC1("dmy", "20/11/1954");

	/* ECPG_INFORMIX_ENOSHORTDATE */
	FUNC1("ddmmyy", "21254");
	FUNC1("ddmmyy", "    21254    ");

	/* ECPG_INFORMIX_BAD_DAY */
	FUNC1("ddmmyy", "320494");

	/* ECPG_INFORMIX_BAD_MONTH */
	FUNC1("mm-yyyy-dd", "13-1993-21");

	/* ECPG_INFORMIX_BAD_YEAR */
	/* ??? */

	return 0;
}