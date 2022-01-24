#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int is_localtime; scalar_t__ dst; void* zone_type; } ;
typedef  TYPE_1__ timelib_time ;
typedef  int timelib_long ;

/* Variables and functions */
 int TIMELIB_UNSET ; 
 void* TIMELIB_ZONETYPE_OFFSET ; 
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static timelib_long FUNC3(char **ptr, timelib_time *t)
{
	timelib_long retval = TIMELIB_UNSET;
	char *begin = *ptr;

	/* First character must be +/- */
	if (**ptr != '+' && **ptr != '-') {
		return retval;
	}

	++*ptr;
	while (FUNC0(**ptr)) {
		++*ptr;
	}

	if (*begin == '+') {
		t->is_localtime = 1;
		t->zone_type = TIMELIB_ZONETYPE_OFFSET;
		t->dst = 0;

		retval = FUNC1(FUNC2(begin + 1, NULL, 10));
	} else if (*begin == '-') {
		t->is_localtime = 1;
		t->zone_type = TIMELIB_ZONETYPE_OFFSET;
		t->dst = 0;

		retval = -1 * FUNC1(FUNC2(begin + 1, NULL, 10));
	}
	return retval;
}