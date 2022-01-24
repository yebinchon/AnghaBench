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
struct timex {int freq; scalar_t__ tick; scalar_t__ offset; scalar_t__ modes; } ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC_RAW ; 
 long long NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct timex*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 long long FUNC3 (struct timespec,struct timespec) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct timespec*,struct timespec*) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 (char*) ; 
 int FUNC9 (long long) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long long FUNC12 (long long,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC14(int argv, char **argc)
{
	struct timespec mon, raw, start, end;
	long long delta1, delta2, interval, eppm, ppm;
	struct timex tx1, tx2;

	FUNC11(stdout, NULL);

	if (FUNC2(CLOCK_MONOTONIC_RAW, &raw)) {
		FUNC10("ERR: NO CLOCK_MONOTONIC_RAW\n");
		return -1;
	}

	tx1.modes = 0;
	FUNC1(&tx1);
	FUNC5(&mon, &raw);
	start = mon;
	delta1 = FUNC3(mon, raw);

	if (tx1.offset)
		FUNC10("WARNING: ADJ_OFFSET in progress, this will cause inaccurate results\n");

	FUNC10("Estimating clock drift: ");
	FUNC4(stdout);
	FUNC13(120);

	FUNC5(&mon, &raw);
	end = mon;
	tx2.modes = 0;
	FUNC1(&tx2);
	delta2 = FUNC3(mon, raw);

	interval = FUNC3(start, end);

	/* calculate measured ppm between MONOTONIC and MONOTONIC_RAW */
	eppm = ((delta2-delta1)*NSEC_PER_SEC)/interval;
	eppm = -eppm;
	FUNC10("%lld.%i(est)", eppm/1000, FUNC0((int)(eppm%1000)));

	/* Avg the two actual freq samples adjtimex gave us */
	ppm = (tx1.freq + tx2.freq) * 1000 / 2;
	ppm = (long long)tx1.freq * 1000;
	ppm = FUNC12(ppm, 16);
	FUNC10(" %lld.%i(act)", ppm/1000, FUNC0((int)(ppm%1000)));

	if (FUNC9(eppm - ppm) > 1000) {
		if (tx1.offset || tx2.offset ||
		    tx1.freq != tx2.freq || tx1.tick != tx2.tick) {
			FUNC10("	[SKIP]\n");
			return FUNC8("The clock was adjusted externally. Shutdown NTPd or other time sync daemons\n");
		}
		FUNC10("	[FAILED]\n");
		return FUNC6();
	}
	FUNC10("	[OK]\n");
	return  FUNC7();
}