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
struct pg_tm {scalar_t__ tm_gmtoff; } ;
typedef  int pg_time_t ;

/* Variables and functions */
 int Log_RotationAge ; 
 int SECS_PER_MINUTE ; 
 int /*<<< orphan*/  log_timezone ; 
 int next_rotation_time ; 
 struct pg_tm* FUNC0 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{
	pg_time_t	now;
	struct pg_tm *tm;
	int			rotinterval;

	/* nothing to do if time-based rotation is disabled */
	if (Log_RotationAge <= 0)
		return;

	/*
	 * The requirements here are to choose the next time > now that is a
	 * "multiple" of the log rotation interval.  "Multiple" can be interpreted
	 * fairly loosely.  In this version we align to log_timezone rather than
	 * GMT.
	 */
	rotinterval = Log_RotationAge * SECS_PER_MINUTE;	/* convert to seconds */
	now = (pg_time_t) FUNC1(NULL);
	tm = FUNC0(&now, log_timezone);
	now += tm->tm_gmtoff;
	now -= now % rotinterval;
	now += rotinterval;
	now -= tm->tm_gmtoff;
	next_rotation_time = now;
}