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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static time_t FUNC4(char *cdtime, char *cddate) /* {{{ */
{
	int dtime = FUNC0(cdtime), ddate = FUNC0(cddate);
	struct tm *tm, tmbuf;
	time_t now;

	now = FUNC3(NULL);
	tm = FUNC2(&now, &tmbuf);

	tm->tm_year = ((ddate>>9)&127) + 1980 - 1900;
	tm->tm_mon = ((ddate>>5)&15) - 1;
	tm->tm_mday = ddate&31;

	tm->tm_hour = (dtime>>11)&31;
	tm->tm_min = (dtime>>5)&63;
	tm->tm_sec = (dtime<<1)&62;

	return FUNC1(tm);
}