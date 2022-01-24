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
struct tm {int tm_year; int tm_mon; int tm_mday; } ;
typedef  scalar_t__ date ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*) ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 scalar_t__ errno ; 

void
FUNC2(date * d)
{
	struct tm	ts;

	FUNC0(&ts);
	if (errno == 0)
		*d = FUNC1(ts.tm_year, ts.tm_mon, ts.tm_mday) - FUNC1(2000, 1, 1);
	return;
}