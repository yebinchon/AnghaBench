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
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 long long FUNC1 (struct timespec,struct timespec) ; 
 struct timespec FUNC2 (long long) ; 
 int FUNC3 (struct timespec) ; 

void FUNC4(struct timespec *mon, struct timespec *raw)
{
	struct timespec start, mid, end;
	long long diff = 0, tmp;
	int i;

	for (i = 0; i < 3; i++) {
		long long newdiff;

		FUNC0(CLOCK_MONOTONIC, &start);
		FUNC0(CLOCK_MONOTONIC_RAW, &mid);
		FUNC0(CLOCK_MONOTONIC, &end);

		newdiff = FUNC1(start, end);
		if (diff == 0 || newdiff < diff) {
			diff = newdiff;
			*raw = mid;
			tmp = (FUNC3(start) + FUNC3(end))/2;
			*mon = FUNC2(tmp);
		}
	}
}