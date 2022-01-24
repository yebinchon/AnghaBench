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
typedef  int /*<<< orphan*/  zval ;
struct cal_entry_t {int num_months; int /*<<< orphan*/  symbol; int /*<<< orphan*/  name; int /*<<< orphan*/  max_days_in_month; int /*<<< orphan*/ * month_name_short; int /*<<< orphan*/ * month_name_long; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cal_entry_t* cal_conversion_table ; 

__attribute__((used)) static void FUNC5(int cal, zval *ret)
{
	zval months, smonths;
	int i;
	const struct cal_entry_t *calendar;

	calendar = &cal_conversion_table[cal];
	FUNC4(ret);

	FUNC4(&months);
	FUNC4(&smonths);

	for (i = 1; i <= calendar->num_months; i++) {
		FUNC3(&months, i, calendar->month_name_long[i]);
		FUNC3(&smonths, i, calendar->month_name_short[i]);
	}

	FUNC2(ret, "months", &months);
	FUNC2(ret, "abbrevmonths", &smonths);
	FUNC0(ret, "maxdaysinmonth", calendar->max_days_in_month);
	FUNC1(ret, "calname", calendar->name);
	FUNC1(ret, "calsymbol", calendar->symbol);

}