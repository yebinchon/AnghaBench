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
struct timeval {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELAY ; 
 int ITIMER_PROF ; 
 int ITIMER_REAL ; 
 int ITIMER_VIRTUAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGPROF ; 
 int /*<<< orphan*/  SIGVTALRM ; 
 int /*<<< orphan*/  FUNC0 (struct timeval,struct timeval) ; 
 scalar_t__ done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sig_handler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(int which)
{
	int err;
	struct timeval start, end;
	struct itimerval val = {
		.it_value.tv_sec = DELAY,
	};

	FUNC6("Check itimer ");

	if (which == ITIMER_VIRTUAL)
		FUNC6("virtual... ");
	else if (which == ITIMER_PROF)
		FUNC6("prof... ");
	else if (which == ITIMER_REAL)
		FUNC6("real... ");

	FUNC1(stdout);

	done = 0;

	if (which == ITIMER_VIRTUAL)
		FUNC8(SIGVTALRM, sig_handler);
	else if (which == ITIMER_PROF)
		FUNC8(SIGPROF, sig_handler);
	else if (which == ITIMER_REAL)
		FUNC8(SIGALRM, sig_handler);

	err = FUNC2(&start, NULL);
	if (err < 0) {
		FUNC5("Can't call gettimeofday()\n");
		return -1;
	}

	err = FUNC7(which, &val, NULL);
	if (err < 0) {
		FUNC5("Can't set timer\n");
		return -1;
	}

	if (which == ITIMER_VIRTUAL)
		FUNC9();
	else if (which == ITIMER_PROF)
		FUNC4();
	else if (which == ITIMER_REAL)
		FUNC3();

	err = FUNC2(&end, NULL);
	if (err < 0) {
		FUNC5("Can't call gettimeofday()\n");
		return -1;
	}

	if (!FUNC0(start, end))
		FUNC6("[OK]\n");
	else
		FUNC6("[FAIL]\n");

	return 0;
}