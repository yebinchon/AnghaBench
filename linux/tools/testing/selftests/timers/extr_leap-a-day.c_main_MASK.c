#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timer_t ;
typedef  int time_t ;
struct TYPE_8__ {int tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct timex {scalar_t__ status; TYPE_4__ time; int /*<<< orphan*/  tai; void* modes; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_5__ {scalar_t__ sival_int; } ;
struct sigevent {int sigev_signo; TYPE_1__ sigev_value; int /*<<< orphan*/  sigev_notify; } ;
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct itimerspec {TYPE_3__ it_interval; TYPE_2__ it_value; } ;
typedef  int /*<<< orphan*/  se ;

/* Variables and functions */
 void* ADJ_STATUS ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  CLOCK_TAI ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  SIGEV_SIGNAL ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int SIGRTMAX ; 
 scalar_t__ STA_DEL ; 
 scalar_t__ STA_INS ; 
 int /*<<< orphan*/  TIMER_ABSTIME ; 
 int FUNC0 (struct timex*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,char*) ; 
 scalar_t__ error_found ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,char**,char*) ; 
 int /*<<< orphan*/  handler ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct sigevent*,int /*<<< orphan*/ ,int) ; 
 int next_leap ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigalarm ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 char* FUNC19 (int) ; 
 int FUNC20 (int /*<<< orphan*/ ,struct sigevent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimerspec*,int /*<<< orphan*/ *) ; 

int FUNC22(int argc, char **argv)
{
	timer_t tm1;
	struct itimerspec its1;
	struct sigevent se;
	struct sigaction act;
	int signum = SIGRTMAX;
	int settime = 1;
	int tai_time = 0;
	int insert = 1;
	int iterations = 10;
	int opt;

	/* Process arguments */
	while ((opt = FUNC8(argc, argv, "sti:")) != -1) {
		switch (opt) {
		case 'w':
			FUNC12("Only setting leap-flag, not changing time. It could take up to a day for leap to trigger.\n");
			settime = 0;
			break;
		case 'i':
			iterations = FUNC1(optarg);
			break;
		case 't':
			tai_time = 1;
			break;
		default:
			FUNC12("Usage: %s [-w] [-i <iterations>]\n", argv[0]);
			FUNC12("	-w: Set flag and wait for leap second each iteration");
			FUNC12("	    (default sets time to right before leapsecond)\n");
			FUNC12("	-i: Number of iterations (-1 = infinite, default is 10)\n");
			FUNC12("	-t: Print TAI time\n");
			FUNC7(-1);
		}
	}

	/* Make sure TAI support is present if -t was used */
	if (tai_time) {
		struct timespec ts;

		if (FUNC3(CLOCK_TAI, &ts)) {
			FUNC12("System doesn't support CLOCK_TAI\n");
			FUNC9();
		}
	}

	FUNC16(SIGINT, handler);
	FUNC16(SIGKILL, handler);

	/* Set up timer signal handler: */
	FUNC15(&act.sa_mask);
	act.sa_flags = 0;
	act.sa_handler = sigalarm;
	FUNC14(signum, &act, NULL);

	if (iterations < 0)
		FUNC12("This runs continuously. Press ctrl-c to stop\n");
	else
		FUNC12("Running for %i iterations. Press ctrl-c to stop\n", iterations);

	FUNC12("\n");
	while (1) {
		int ret;
		struct timespec ts;
		struct timex tx;
		time_t now;

		/* Get the current time */
		FUNC3(CLOCK_REALTIME, &ts);

		/* Calculate the next possible leap second 23:59:60 GMT */
		next_leap = ts.tv_sec;
		next_leap += 86400 - (next_leap % 86400);

		if (settime) {
			struct timeval tv;

			tv.tv_sec = next_leap - 10;
			tv.tv_usec = 0;
			FUNC13(&tv, NULL);
			FUNC12("Setting time to %s", FUNC5(&tv.tv_sec));
		}

		/* Reset NTP time state */
		FUNC2();

		/* Set the leap second insert flag */
		tx.modes = ADJ_STATUS;
		if (insert)
			tx.status = STA_INS;
		else
			tx.status = STA_DEL;
		ret = FUNC0(&tx);
		if (ret < 0) {
			FUNC12("Error: Problem setting STA_INS/STA_DEL!: %s\n",
							FUNC19(ret));
			return FUNC9();
		}

		/* Validate STA_INS was set */
		tx.modes = 0;
		ret = FUNC0(&tx);
		if (tx.status != STA_INS && tx.status != STA_DEL) {
			FUNC12("Error: STA_INS/STA_DEL not set!: %s\n",
							FUNC19(ret));
			return FUNC9();
		}

		if (tai_time) {
			FUNC12("Using TAI time,"
				" no inconsistencies should be seen!\n");
		}

		FUNC12("Scheduling leap second for %s", FUNC5(&next_leap));

		/* Set up timer */
		FUNC12("Setting timer for %ld -  %s", next_leap, FUNC5(&next_leap));
		FUNC11(&se, 0, sizeof(se));
		se.sigev_notify = SIGEV_SIGNAL;
		se.sigev_signo = signum;
		se.sigev_value.sival_int = 0;
		if (FUNC20(CLOCK_REALTIME, &se, &tm1) == -1) {
			FUNC12("Error: timer_create failed\n");
			return FUNC9();
		}
		its1.it_value.tv_sec = next_leap;
		its1.it_value.tv_nsec = 0;
		its1.it_interval.tv_sec = 0;
		its1.it_interval.tv_nsec = 0;
		FUNC21(tm1, TIMER_ABSTIME, &its1, NULL);

		/* Wake up 3 seconds before leap */
		ts.tv_sec = next_leap - 3;
		ts.tv_nsec = 0;


		while (FUNC4(CLOCK_REALTIME, TIMER_ABSTIME, &ts, NULL))
			FUNC12("Something woke us up, returning to sleep\n");

		/* Validate STA_INS is still set */
		tx.modes = 0;
		ret = FUNC0(&tx);
		if (tx.status != STA_INS && tx.status != STA_DEL) {
			FUNC12("Something cleared STA_INS/STA_DEL, setting it again.\n");
			tx.modes = ADJ_STATUS;
			if (insert)
				tx.status = STA_INS;
			else
				tx.status = STA_DEL;
			ret = FUNC0(&tx);
		}

		/* Check adjtimex output every half second */
		now = tx.time.tv_sec;
		while (now < next_leap + 2) {
			char buf[26];
			struct timespec tai;
			int ret;

			tx.modes = 0;
			ret = FUNC0(&tx);

			if (tai_time) {
				FUNC3(CLOCK_TAI, &tai);
				FUNC12("%ld sec, %9ld ns\t%s\n",
						tai.tv_sec,
						tai.tv_nsec,
						FUNC19(ret));
			} else {
				FUNC6(&tx.time.tv_sec, buf);
				buf[FUNC17(buf)-1] = 0; /*remove trailing\n */

				FUNC12("%s + %6ld us (%i)\t%s\n",
						buf,
						tx.time.tv_usec,
						tx.tai,
						FUNC19(ret));
			}
			now = tx.time.tv_sec;
			/* Sleep for another half second */
			ts.tv_sec = 0;
			ts.tv_nsec = NSEC_PER_SEC / 2;
			FUNC4(CLOCK_MONOTONIC, 0, &ts, NULL);
		}
		/* Switch to using other mode */
		insert = !insert;

		/* Note if kernel has known hrtimer failure */
		FUNC18();

		FUNC12("Leap complete\n");
		if (error_found) {
			FUNC12("Errors observed\n");
			FUNC2();
			return FUNC9();
		}
		FUNC12("\n");
		if ((iterations != -1) && !(--iterations))
			break;
	}

	FUNC2();
	return FUNC10();
}