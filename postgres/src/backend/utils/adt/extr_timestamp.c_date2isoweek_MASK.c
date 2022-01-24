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
typedef  int float8 ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int) ; 

int
FUNC2(int year, int mon, int mday)
{
	float8		result;
	int			day0,
				day4,
				dayn;

	/* current day */
	dayn = FUNC0(year, mon, mday);

	/* fourth day of current year */
	day4 = FUNC0(year, 1, 4);

	/* day0 == offset to first day of week (Monday) */
	day0 = FUNC1(day4 - 1);

	/*
	 * We need the first week containing a Thursday, otherwise this day falls
	 * into the previous year for purposes of counting weeks
	 */
	if (dayn < day4 - day0)
	{
		day4 = FUNC0(year - 1, 1, 4);

		/* day0 == offset to first day of week (Monday) */
		day0 = FUNC1(day4 - 1);
	}

	result = (dayn - (day4 - day0)) / 7 + 1;

	/*
	 * Sometimes the last few days in a year will fall into the first week of
	 * the next year, so check for this.
	 */
	if (result >= 52)
	{
		day4 = FUNC0(year + 1, 1, 4);

		/* day0 == offset to first day of week (Monday) */
		day0 = FUNC1(day4 - 1);

		if (dayn >= day4 - day0)
			result = (dayn - (day4 - day0)) / 7 + 1;
	}

	return (int) result;
}