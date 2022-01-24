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
struct timex {int tick; scalar_t__ freq; scalar_t__ offset; int /*<<< orphan*/  modes; } ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADJ_FREQUENCY ; 
 int /*<<< orphan*/  ADJ_OFFSET ; 
 int /*<<< orphan*/  ADJ_TICK ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC_RAW ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  _SC_CLK_TCK ; 
 int /*<<< orphan*/  FUNC0 (struct timex*) ; 
 scalar_t__ FUNC1 (long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int systick ; 

int FUNC8(int argv, char **argc)
{
	struct timespec raw;
	long tick, max, interval, err;
	struct timex tx1;

	err = 0;
	FUNC6(stdout, NULL);

	if (FUNC2(CLOCK_MONOTONIC_RAW, &raw)) {
		FUNC5("ERR: NO CLOCK_MONOTONIC_RAW\n");
		return -1;
	}

	FUNC5("Each iteration takes about 15 seconds\n");

	systick = FUNC7(_SC_CLK_TCK);
	systick = USEC_PER_SEC/FUNC7(_SC_CLK_TCK);
	max = systick/10; /* +/- 10% */
	interval = max/4; /* in 4 steps each side */

	for (tick = (systick - max); tick < (systick + max); tick += interval) {
		if (FUNC1(tick)) {
			err = 1;
			break;
		}
	}

	/* Reset things to zero */
	tx1.modes	 = ADJ_TICK;
	tx1.modes	|= ADJ_OFFSET;
	tx1.modes	|= ADJ_FREQUENCY;

	tx1.offset	 = 0;
	tx1.freq	 = 0;
	tx1.tick	 = systick;

	FUNC0(&tx1);

	if (err)
		return FUNC3();

	return FUNC4();
}