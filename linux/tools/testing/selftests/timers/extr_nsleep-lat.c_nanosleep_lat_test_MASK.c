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
struct timespec {long long tv_sec; long long tv_nsec; } ;

/* Variables and functions */
 long long NSEC_PER_SEC ; 
 int /*<<< orphan*/  TIMER_ABSTIME ; 
 int UNRESONABLE_LATENCY ; 
 int UNSUPPORTED ; 
 scalar_t__ FUNC0 (int,struct timespec*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,long long) ; 
 struct timespec FUNC3 (struct timespec,long long) ; 
 long long FUNC4 (struct timespec,struct timespec) ; 

int FUNC5(int clockid, long long ns)
{
	struct timespec start, end, target;
	long long latency = 0;
	int i, count;

	target.tv_sec = ns/NSEC_PER_SEC;
	target.tv_nsec = ns%NSEC_PER_SEC;

	if (FUNC0(clockid, &start))
		return UNSUPPORTED;
	if (FUNC1(clockid, 0, &target, NULL))
		return UNSUPPORTED;

	count = 10;

	/* First check relative latency */
	FUNC0(clockid, &start);
	for (i = 0; i < count; i++)
		FUNC1(clockid, 0, &target, NULL);
	FUNC0(clockid, &end);

	if (((FUNC4(start, end)/count)-ns) > UNRESONABLE_LATENCY) {
		FUNC2("Large rel latency: %lld ns :", (FUNC4(start, end)/count)-ns);
		return -1;
	}

	/* Next check absolute latency */
	for (i = 0; i < count; i++) {
		FUNC0(clockid, &start);
		target = FUNC3(start, ns);
		FUNC1(clockid, TIMER_ABSTIME, &target, NULL);
		FUNC0(clockid, &end);
		latency += FUNC4(target, end);
	}

	if (latency/count > UNRESONABLE_LATENCY) {
		FUNC2("Large abs latency: %lld ns :", latency/count);
		return -1;
	}

	return 0;
}