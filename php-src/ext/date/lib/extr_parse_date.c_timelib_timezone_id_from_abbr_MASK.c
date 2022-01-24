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
struct TYPE_3__ {char* full_tz_name; } ;
typedef  TYPE_1__ timelib_tz_lookup_table ;
typedef  int /*<<< orphan*/  timelib_long ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 

char *FUNC1(const char *abbr, timelib_long gmtoffset, int isdst)
{
	const timelib_tz_lookup_table *tp;

	tp = FUNC0(abbr, gmtoffset, isdst);
	if (tp) {
		return (tp->full_tz_name);
	} else {
		return NULL;
	}
}