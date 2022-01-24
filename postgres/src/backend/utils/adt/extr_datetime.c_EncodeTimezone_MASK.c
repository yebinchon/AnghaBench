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

/* Variables and functions */
 int MINS_PER_HOUR ; 
 int SECS_PER_MINUTE ; 
 int USE_XSD_DATES ; 
 int FUNC0 (int) ; 
 char* FUNC1 (char*,int,int) ; 

__attribute__((used)) static char *
FUNC2(char *str, int tz, int style)
{
	int			hour,
				min,
				sec;

	sec = FUNC0(tz);
	min = sec / SECS_PER_MINUTE;
	sec -= min * SECS_PER_MINUTE;
	hour = min / MINS_PER_HOUR;
	min -= hour * MINS_PER_HOUR;

	/* TZ is negated compared to sign we wish to display ... */
	*str++ = (tz <= 0 ? '+' : '-');

	if (sec != 0)
	{
		str = FUNC1(str, hour, 2);
		*str++ = ':';
		str = FUNC1(str, min, 2);
		*str++ = ':';
		str = FUNC1(str, sec, 2);
	}
	else if (min != 0 || style == USE_XSD_DATES)
	{
		str = FUNC1(str, hour, 2);
		*str++ = ':';
		str = FUNC1(str, min, 2);
	}
	else
		str = FUNC1(str, hour, 2);
	return str;
}