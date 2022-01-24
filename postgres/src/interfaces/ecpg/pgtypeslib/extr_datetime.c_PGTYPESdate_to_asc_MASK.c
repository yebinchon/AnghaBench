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
struct tm {int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
typedef  scalar_t__ date ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int,char*,int) ; 
 int /*<<< orphan*/  MAXDATELEN ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4(date dDate)
{
	struct tm	tt,
			   *tm = &tt;
	char		buf[MAXDATELEN + 1];
	int			DateStyle = 1;
	bool		EuroDates = false;

	FUNC2(dDate + FUNC1(2000, 1, 1), &(tm->tm_year), &(tm->tm_mon), &(tm->tm_mday));
	FUNC0(tm, DateStyle, buf, EuroDates);
	return FUNC3(buf);
}