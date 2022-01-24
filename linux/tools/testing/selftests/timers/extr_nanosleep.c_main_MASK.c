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

/* Variables and functions */
 int CLOCK_HWSPECIFIC ; 
 int CLOCK_PROCESS_CPUTIME_ID ; 
 int CLOCK_REALTIME ; 
 int CLOCK_THREAD_CPUTIME_ID ; 
 int NR_CLOCKIDS ; 
 int NSEC_PER_SEC ; 
 int UNSUPPORTED ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int,long long) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC6(int argc, char **argv)
{
	long long length;
	int clockid, ret;

	for (clockid = CLOCK_REALTIME; clockid < NR_CLOCKIDS; clockid++) {

		/* Skip cputime clockids since nanosleep won't increment cputime */
		if (clockid == CLOCK_PROCESS_CPUTIME_ID ||
				clockid == CLOCK_THREAD_CPUTIME_ID ||
				clockid == CLOCK_HWSPECIFIC)
			continue;

		FUNC5("Nanosleep %-31s ", FUNC0(clockid));
		FUNC1(stdout);

		length = 10;
		while (length <= (NSEC_PER_SEC * 10)) {
			ret = FUNC4(clockid, length);
			if (ret == UNSUPPORTED) {
				FUNC5("[UNSUPPORTED]\n");
				goto next;
			}
			if (ret < 0) {
				FUNC5("[FAILED]\n");
				return FUNC2();
			}
			length *= 100;
		}
		FUNC5("[OK]\n");
next:
		ret = 0;
	}
	return FUNC3();
}