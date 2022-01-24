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
struct timespec {int dummy; } ;

/* Variables and functions */
 int CLOCK_HWSPECIFIC ; 
 int CLOCK_REALTIME ; 
 int NR_CLOCKIDS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct timespec*) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char**,char*) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC10(int argc, char *argv[])
{
	int clockid, opt;
	int userclock = CLOCK_REALTIME;
	int maxclocks = NR_CLOCKIDS;
	int runtime = 10;
	struct timespec ts;

	/* Process arguments */
	while ((opt = FUNC5(argc, argv, "t:c:")) != -1) {
		switch (opt) {
		case 't':
			runtime = FUNC0(optarg);
			break;
		case 'c':
			userclock = FUNC0(optarg);
			maxclocks = userclock + 1;
			break;
		default:
			FUNC8("Usage: %s [-t <secs>] [-c <clockid>]\n", argv[0]);
			FUNC8("	-t: Number of seconds to run\n");
			FUNC8("	-c: clockid to use (default, all clockids)\n");
			FUNC4(-1);
		}
	}

	FUNC9(stdout, NULL);

	for (clockid = userclock; clockid < maxclocks; clockid++) {

		if (clockid == CLOCK_HWSPECIFIC)
			continue;

		if (!FUNC1(clockid, &ts)) {
			FUNC8("Consistent %-30s ", FUNC2(clockid));
			if (FUNC3(clockid, runtime))
				return FUNC6();
		}
	}
	return FUNC7();
}