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
typedef  int /*<<< orphan*/  tzname ;
typedef  int /*<<< orphan*/  pg_tz ;
typedef  int /*<<< orphan*/  offsetstr ;

/* Variables and functions */
 long SECS_PER_HOUR ; 
 long SECS_PER_MINUTE ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 
 int FUNC2 (char*) ; 

pg_tz *
FUNC3(long gmtoffset)
{
	long		absoffset = (gmtoffset < 0) ? -gmtoffset : gmtoffset;
	char		offsetstr[64];
	char		tzname[128];

	FUNC1(offsetstr, sizeof(offsetstr),
			 "%02ld", absoffset / SECS_PER_HOUR);
	absoffset %= SECS_PER_HOUR;
	if (absoffset != 0)
	{
		FUNC1(offsetstr + FUNC2(offsetstr),
				 sizeof(offsetstr) - FUNC2(offsetstr),
				 ":%02ld", absoffset / SECS_PER_MINUTE);
		absoffset %= SECS_PER_MINUTE;
		if (absoffset != 0)
			FUNC1(offsetstr + FUNC2(offsetstr),
					 sizeof(offsetstr) - FUNC2(offsetstr),
					 ":%02ld", absoffset);
	}
	if (gmtoffset > 0)
		FUNC1(tzname, sizeof(tzname), "<-%s>+%s",
				 offsetstr, offsetstr);
	else
		FUNC1(tzname, sizeof(tzname), "<+%s>-%s",
				 offsetstr, offsetstr);

	return FUNC0(tzname);
}