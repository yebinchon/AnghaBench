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
 int FUNC0 (int,int,int) ; 

timelib_sll FUNC1(timelib_sll iy, timelib_sll iw, timelib_sll id)
{
	timelib_sll dow, day;

	/* Figure out the dayofweek for y-1-1 */
	dow = FUNC0(iy, 1, 1);
	/* then use that to figure out the offset for day 1 of week 1 */
	day = 0 - (dow > 4 ? dow - 7 : dow);

	/* Add weeks and days */
	return day + ((iw - 1) * 7) + id;
}