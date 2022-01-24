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
struct timespec {int dummy; } ;

/* Variables and functions */
 long long MILLION ; 
 long long FUNC0 (struct timespec,struct timespec) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

long long FUNC3(void)
{
	struct timespec mon_start, raw_start, mon_end, raw_end;
	long long delta1, delta2, eppm;

	FUNC1(&mon_start, &raw_start);

	FUNC2(15);

	FUNC1(&mon_end, &raw_end);

	delta1 = FUNC0(mon_start, mon_end);
	delta2 = FUNC0(raw_start, raw_end);

	eppm = (delta1*MILLION)/delta2 - MILLION;

	return eppm;
}