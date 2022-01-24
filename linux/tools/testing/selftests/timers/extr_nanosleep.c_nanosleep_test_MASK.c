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
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_ABSTIME ; 
 int UNSUPPORTED ; 
 scalar_t__ FUNC0 (int,struct timespec*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec,struct timespec) ; 
 struct timespec FUNC3 (struct timespec,long long) ; 

int FUNC4(int clockid, long long ns)
{
	struct timespec now, target, rel;

	/* First check abs time */
	if (FUNC0(clockid, &now))
		return UNSUPPORTED;
	target = FUNC3(now, ns);

	if (FUNC1(clockid, TIMER_ABSTIME, &target, NULL))
		return UNSUPPORTED;
	FUNC0(clockid, &now);

	if (!FUNC2(target, now))
		return -1;

	/* Second check reltime */
	FUNC0(clockid, &now);
	rel.tv_sec = 0;
	rel.tv_nsec = 0;
	rel = FUNC3(rel, ns);
	target = FUNC3(now, ns);
	FUNC1(clockid, 0, &rel, NULL);
	FUNC0(clockid, &now);

	if (!FUNC2(target, now))
		return -1;
	return 0;
}