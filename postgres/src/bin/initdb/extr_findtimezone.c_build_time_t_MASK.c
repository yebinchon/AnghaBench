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
typedef  int /*<<< orphan*/  tm ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_mday; int tm_mon; int tm_year; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*) ; 

__attribute__((used)) static time_t
FUNC2(int year, int month, int day)
{
	struct tm	tm;

	FUNC0(&tm, 0, sizeof(tm));
	tm.tm_mday = day;
	tm.tm_mon = month - 1;
	tm.tm_year = year - 1900;

	return FUNC1(&tm);
}