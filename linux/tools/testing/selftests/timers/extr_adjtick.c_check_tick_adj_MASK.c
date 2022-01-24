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
struct timex {long tick; scalar_t__ freq; scalar_t__ offset; int /*<<< orphan*/  modes; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADJ_FREQUENCY ; 
 int /*<<< orphan*/  ADJ_OFFSET ; 
 int /*<<< orphan*/  ADJ_STATUS ; 
 int /*<<< orphan*/  ADJ_TICK ; 
 long long MILLION ; 
 int /*<<< orphan*/  STA_PLL ; 
 int /*<<< orphan*/  FUNC0 (struct timex*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 long long FUNC2 () ; 
 int FUNC3 (long long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  stdout ; 
 long long systick ; 

int FUNC6(long tickval)
{
	long long eppm, ppm;
	struct timex tx1;

	tx1.modes	 = ADJ_TICK;
	tx1.modes	|= ADJ_OFFSET;
	tx1.modes	|= ADJ_FREQUENCY;
	tx1.modes	|= ADJ_STATUS;

	tx1.status	= STA_PLL;
	tx1.offset	= 0;
	tx1.freq	= 0;
	tx1.tick	= tickval;

	FUNC0(&tx1);

	FUNC5(1);

	ppm = ((long long)tickval * MILLION)/systick - MILLION;
	FUNC4("Estimating tick (act: %ld usec, %lld ppm): ", tickval, ppm);

	eppm = FUNC2();
	FUNC4("%lld usec, %lld ppm", systick + (systick * eppm / MILLION), eppm);
	FUNC1(stdout);

	tx1.modes = 0;
	FUNC0(&tx1);

	if (tx1.offset || tx1.freq || tx1.tick != tickval) {
		FUNC4("	[ERROR]\n");
		FUNC4("\tUnexpected adjtimex return values, make sure ntpd is not running.\n");
		return -1;
	}

	/*
	 * Here we use 100ppm difference as an error bound.
	 * We likely should see better, but some coarse clocksources
	 * cannot match the HZ tick size accurately, so we have a
	 * internal correction factor that doesn't scale exactly
	 * with the adjustment, resulting in > 10ppm error during
	 * a 10% adjustment. 100ppm also gives us more breathing
	 * room for interruptions during the measurement.
	 */
	if (FUNC3(eppm - ppm) > 100) {
		FUNC4("	[FAILED]\n");
		return -1;
	}
	FUNC4("	[OK]\n");

	return  0;
}