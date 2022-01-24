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
struct rtc_time {int tm_mday; int tm_mon; int tm_year; int tm_hour; int tm_min; int tm_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  RTC_RD_TIME ; 
 int /*<<< orphan*/  RTC_SET_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* default_time ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct rtc_time*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(int argc, char **argv)
{
	int fd, retval;
	struct rtc_time new, current;
	const char *rtc, *date;
	const char *time = default_time;

	switch (argc) {
	case 4:
		time = argv[3];
		/* FALLTHROUGH */
	case 3:
		date = argv[2];
		rtc = argv[1];
		break;
	default:
		FUNC2(stderr, "usage: rtctest_setdate <rtcdev> <DD-MM-YYYY> [HH:MM:SS]\n");
		return 1;
	}

	fd = FUNC4(rtc, O_RDONLY);
	if (fd == -1) {
		FUNC5(rtc);
		FUNC1(errno);
	}

	FUNC6(date, "%d-%d-%d", &new.tm_mday, &new.tm_mon, &new.tm_year);
	new.tm_mon -= 1;
	new.tm_year -= 1900;
	FUNC6(time, "%d:%d:%d", &new.tm_hour, &new.tm_min, &new.tm_sec);

	FUNC2(stderr, "Test will set RTC date/time to %d-%d-%d, %02d:%02d:%02d.\n",
		new.tm_mday, new.tm_mon + 1, new.tm_year + 1900,
		new.tm_hour, new.tm_min, new.tm_sec);

	/* Write the new date in RTC */
	retval = FUNC3(fd, RTC_SET_TIME, &new);
	if (retval == -1) {
		FUNC5("RTC_SET_TIME ioctl");
		FUNC0(fd);
		FUNC1(errno);
	}

	/* Read back */
	retval = FUNC3(fd, RTC_RD_TIME, &current);
	if (retval == -1) {
		FUNC5("RTC_RD_TIME ioctl");
		FUNC1(errno);
	}

	FUNC2(stderr, "\n\nCurrent RTC date/time is %d-%d-%d, %02d:%02d:%02d.\n",
		current.tm_mday, current.tm_mon + 1, current.tm_year + 1900,
		current.tm_hour, current.tm_min, current.tm_sec);

	FUNC0(fd);
	return 0;
}