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
typedef  int timelib_sll ;

/* Variables and functions */
 int* ml_table_common ; 
 int* ml_table_leap ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int) ; 

void FUNC2(timelib_sll iy, timelib_sll iw, timelib_sll id, timelib_sll *y, timelib_sll *m, timelib_sll *d)
{
	timelib_sll daynr = FUNC0(iy, iw, id) + 1;
	int *table;
	bool is_leap_year;

	// Invariant: is_leap_year == timelib_is_leap(*y)
	*y = iy;
	is_leap_year = FUNC1(*y);

	// Establish invariant that daynr >= 0
	while (daynr <= 0) {
		*y -= 1;
		daynr += (is_leap_year = FUNC1(*y)) ? 366 : 365;
	}

	// Establish invariant that daynr <= number of days in *yr
	while (daynr > (is_leap_year ? 366 : 365)) {
		daynr -= is_leap_year ? 366 : 365;
		*y += 1;
		is_leap_year = FUNC1(*y);
	}

	table = is_leap_year ? ml_table_leap : ml_table_common;

	// Establish invariant that daynr <= number of days in *m
	*m = 1;
	while (daynr > table[*m]) {
		daynr -= table[*m];
		*m += 1;
	}

	*d = daynr;
}