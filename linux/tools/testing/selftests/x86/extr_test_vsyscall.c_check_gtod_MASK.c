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
struct timezone {scalar_t__ tz_minuteswest; scalar_t__ tz_dsttime; } ;
struct timeval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 double FUNC1 (struct timeval const*,struct timeval const*) ; 

__attribute__((used)) static int FUNC2(const struct timeval *tv_sys1,
		      const struct timeval *tv_sys2,
		      const struct timezone *tz_sys,
		      const char *which,
		      const struct timeval *tv_other,
		      const struct timezone *tz_other)
{
	int nerrs = 0;
	double d1, d2;

	if (tz_other && (tz_sys->tz_minuteswest != tz_other->tz_minuteswest || tz_sys->tz_dsttime != tz_other->tz_dsttime)) {
		FUNC0("[FAIL] %s tz mismatch\n", which);
		nerrs++;
	}

	d1 = FUNC1(tv_other, tv_sys1);
	d2 = FUNC1(tv_sys2, tv_other); 
	FUNC0("\t%s time offsets: %lf %lf\n", which, d1, d2);

	if (d1 < 0 || d2 < 0) {
		FUNC0("[FAIL]\t%s time was inconsistent with the syscall\n", which);
		nerrs++;
	} else {
		FUNC0("[OK]\t%s gettimeofday()'s timeval was okay\n", which);
	}

	return nerrs;
}