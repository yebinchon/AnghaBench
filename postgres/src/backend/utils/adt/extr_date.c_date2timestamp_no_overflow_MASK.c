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
typedef  double DateADT ;

/* Variables and functions */
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 double DBL_MAX ; 
 scalar_t__ USECS_PER_DAY ; 

double
FUNC2(DateADT dateVal)
{
	double		result;

	if (FUNC0(dateVal))
		result = -DBL_MAX;
	else if (FUNC1(dateVal))
		result = DBL_MAX;
	else
	{
		/* date is days since 2000, timestamp is microseconds since same... */
		result = dateVal * (double) USECS_PER_DAY;
	}

	return result;
}