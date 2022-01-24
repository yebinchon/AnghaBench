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
typedef  scalar_t__ timelib_sll ;

/* Variables and functions */
 scalar_t__* days_in_month ; 
 scalar_t__* days_in_month_leap ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(timelib_sll *base_y, timelib_sll *base_m, timelib_sll *y, timelib_sll *m, timelib_sll *d, timelib_sll invert)
{
	timelib_sll leapyear;
	timelib_sll month, year;
	timelib_sll days;

	FUNC1(1, 13, 12, base_m, base_y);

	year = *base_y;
	month = *base_m;

/*
	printf( "S: Y%d M%d   %d %d %d   %d\n", year, month, *y, *m, *d, days);
*/
	if (!invert) {
		while (*d < 0) {
			FUNC0(&year, &month);
			leapyear = FUNC3(year);
			days = leapyear ? days_in_month_leap[month] : days_in_month[month];

			/* printf( "I  Y%d M%d   %d %d %d   %d\n", year, month, *y, *m, *d, days); */

			*d += days;
			(*m)--;
		}
	} else {
		while (*d < 0) {
			leapyear = FUNC3(year);
			days = leapyear ? days_in_month_leap[month] : days_in_month[month];

			/* printf( "I  Y%d M%d   %d %d %d   %d\n", year, month, *y, *m, *d, days); */

			*d += days;
			(*m)--;
			FUNC2(&year, &month);
		}
	}
	/*
	printf( "E: Y%d M%d   %d %d %d   %d\n", year, month, *y, *m, *d, days);
	*/
}