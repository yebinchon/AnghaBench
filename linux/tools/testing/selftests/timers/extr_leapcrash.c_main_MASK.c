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
typedef  int time_t ;
struct TYPE_2__ {int tv_sec; } ;
struct timex {int /*<<< orphan*/  status; scalar_t__ modes; TYPE_1__ time; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct timespec {int tv_sec; } ;

/* Variables and functions */
 scalar_t__ ADJ_STATUS ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  STA_INS ; 
 int /*<<< orphan*/  FUNC0 (struct timex*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handler ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC10(void)
{
	struct timex tx;
	struct timespec ts;
	time_t next_leap;
	int count = 0;

	FUNC7(stdout, NULL);

	FUNC9(SIGINT, handler);
	FUNC9(SIGKILL, handler);
	FUNC6("This runs for a few minutes. Press ctrl-c to stop\n");

	FUNC1();


	/* Get the current time */
	FUNC2(CLOCK_REALTIME, &ts);

	/* Calculate the next possible leap second 23:59:60 GMT */
	next_leap = ts.tv_sec;
	next_leap += 86400 - (next_leap % 86400);

	for (count = 0; count < 20; count++) {
		struct timeval tv;


		/* set the time to 2 seconds before the leap */
		tv.tv_sec = next_leap - 2;
		tv.tv_usec = 0;
		if (FUNC8(&tv, NULL)) {
			FUNC6("Error: You're likely not running with proper (ie: root) permissions\n");
			return FUNC4();
		}
		tx.modes = 0;
		FUNC0(&tx);

		/* hammer on adjtime w/ STA_INS */
		while (tx.time.tv_sec < next_leap + 1) {
			/* Set the leap second insert flag */
			tx.modes = ADJ_STATUS;
			tx.status = STA_INS;
			FUNC0(&tx);
		}
		FUNC1();
		FUNC6(".");
		FUNC3(stdout);
	}
	FUNC6("[OK]\n");
	return FUNC5();
}