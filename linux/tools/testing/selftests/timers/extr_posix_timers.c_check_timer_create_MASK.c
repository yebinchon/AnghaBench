#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timer_t ;
struct timeval {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tv_sec; } ;
struct itimerspec {TYPE_1__ it_value; } ;

/* Variables and functions */
 int CLOCK_PROCESS_CPUTIME_ID ; 
 int CLOCK_THREAD_CPUTIME_ID ; 
 int /*<<< orphan*/  DELAY ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (struct timeval,struct timeval) ; 
 scalar_t__ done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  sig_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimerspec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(int which)
{
	int err;
	timer_t id;
	struct timeval start, end;
	struct itimerspec val = {
		.it_value.tv_sec = DELAY,
	};

	FUNC4("Check timer_create() ");
	if (which == CLOCK_THREAD_CPUTIME_ID) {
		FUNC4("per thread... ");
	} else if (which == CLOCK_PROCESS_CPUTIME_ID) {
		FUNC4("per process... ");
	}
	FUNC1(stdout);

	done = 0;
	err = FUNC6(which, NULL, &id);
	if (err < 0) {
		FUNC3("Can't create timer\n");
		return -1;
	}
	FUNC5(SIGALRM, sig_handler);

	err = FUNC2(&start, NULL);
	if (err < 0) {
		FUNC3("Can't call gettimeofday()\n");
		return -1;
	}

	err = FUNC7(id, 0, &val, NULL);
	if (err < 0) {
		FUNC3("Can't set timer\n");
		return -1;
	}

	FUNC8();

	err = FUNC2(&end, NULL);
	if (err < 0) {
		FUNC3("Can't call gettimeofday()\n");
		return -1;
	}

	if (!FUNC0(start, end))
		FUNC4("[OK]\n");
	else
		FUNC4("[FAIL]\n");

	return 0;
}