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
struct TYPE_4__ {char* tz_abbr; int /*<<< orphan*/  sse_uptodate; } ;
typedef  TYPE_1__ timelib_time ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 

char *FUNC1(timelib_time *t)
{
	if (!t->sse_uptodate) {
		FUNC0(t, NULL);
	};
	return t->tz_abbr;
}