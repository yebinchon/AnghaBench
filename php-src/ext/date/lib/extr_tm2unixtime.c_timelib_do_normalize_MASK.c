#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ us; int s; int i; int h; int d; int m; int y; } ;
typedef  TYPE_1__ timelib_time ;

/* Variables and functions */
 scalar_t__ TIMELIB_UNSET ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int*,int*) ; 
 scalar_t__ FUNC1 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(timelib_time* time)
{
	if (time->us != TIMELIB_UNSET) FUNC0(0, 1000000, 1000000, &time->us, &time->s);
	if (time->s != TIMELIB_UNSET) FUNC0(0, 60, 60, &time->s, &time->i);
	if (time->s != TIMELIB_UNSET) FUNC0(0, 60, 60, &time->i, &time->h);
	if (time->s != TIMELIB_UNSET) FUNC0(0, 24, 24, &time->h, &time->d);
	FUNC0(1, 13, 12, &time->m, &time->y);

	/* Short cut if we're doing things against the Epoch */
	if (time->y == 1970 && time->m == 1 && time->d != 1) {
		FUNC2(time);
	}

	do {} while (FUNC1(&time->y, &time->m, &time->d));
	FUNC0(1, 13, 12, &time->m, &time->y);
}