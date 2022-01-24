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
struct timespec {long tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 int CALLS_PER_LOOP ; 
 unsigned long long NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,struct timespec*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec,struct timespec) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int clock_type, unsigned long seconds)
{
	struct timespec list[CALLS_PER_LOOP];
	int i, inconsistent;
	long now, then;
	time_t t;
	char *start_str;

	FUNC0(clock_type, &list[0]);
	now = then = list[0].tv_sec;

	/* timestamp start of test */
	t = FUNC5(0);
	start_str = FUNC1(&t);

	while (seconds == -1 || now - then < seconds) {
		inconsistent = -1;

		/* Fill list */
		for (i = 0; i < CALLS_PER_LOOP; i++)
			FUNC0(clock_type, &list[i]);

		/* Check for inconsistencies */
		for (i = 0; i < CALLS_PER_LOOP - 1; i++)
			if (!FUNC3(list[i], list[i+1]))
				inconsistent = i;

		/* display inconsistency */
		if (inconsistent >= 0) {
			unsigned long long delta;

			FUNC4("\%s\n", start_str);
			for (i = 0; i < CALLS_PER_LOOP; i++) {
				if (i == inconsistent)
					FUNC4("--------------------\n");
				FUNC4("%lu:%lu\n", list[i].tv_sec,
							list[i].tv_nsec);
				if (i == inconsistent + 1)
					FUNC4("--------------------\n");
			}
			delta = list[inconsistent].tv_sec * NSEC_PER_SEC;
			delta += list[inconsistent].tv_nsec;
			delta -= list[inconsistent+1].tv_sec * NSEC_PER_SEC;
			delta -= list[inconsistent+1].tv_nsec;
			FUNC4("Delta: %llu ns\n", delta);
			FUNC2(0);
			/* timestamp inconsistency*/
			t = FUNC5(0);
			FUNC4("%s\n", FUNC1(&t));
			FUNC4("[FAILED]\n");
			return -1;
		}
		now = list[0].tv_sec;
	}
	FUNC4("[OK]\n");
	return 0;
}