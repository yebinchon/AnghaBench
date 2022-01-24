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
struct TYPE_2__ {scalar_t__ tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct timex {int /*<<< orphan*/  tai; TYPE_1__ time; scalar_t__ modes; } ;

/* Variables and functions */
 int TIME_WAIT ; 
 int FUNC0 (struct timex*) ; 
 int error_found ; 
 scalar_t__ next_leap ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(int signo)
{
	struct timex tx;
	int ret;

	tx.modes = 0;
	ret = FUNC0(&tx);

	if (tx.time.tv_sec < next_leap) {
		FUNC1("Error: Early timer expiration! (Should be %ld)\n", next_leap);
		error_found = 1;
		FUNC1("adjtimex: %10ld sec + %6ld us (%i)\t%s\n",
					tx.time.tv_sec,
					tx.time.tv_usec,
					tx.tai,
					FUNC2(ret));
	}
	if (ret != TIME_WAIT) {
		FUNC1("Error: Timer seeing incorrect NTP state? (Should be TIME_WAIT)\n");
		error_found = 1;
		FUNC1("adjtimex: %10ld sec + %6ld us (%i)\t%s\n",
					tx.time.tv_sec,
					tx.time.tv_usec,
					tx.tai,
					FUNC2(ret));
	}
}