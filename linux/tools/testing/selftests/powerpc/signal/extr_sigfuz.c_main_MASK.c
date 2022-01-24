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
 int /*<<< orphan*/  ARG_COMPLETE ; 
 int /*<<< orphan*/  ARG_FOREVER ; 
 int /*<<< orphan*/  ARG_MESS_WITH_MSR_AT ; 
 int /*<<< orphan*/  ARG_MESS_WITH_TM_AT ; 
 int /*<<< orphan*/  ARG_MESS_WITH_TM_BEFORE ; 
 int /*<<< orphan*/  args ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int count_max ; 
 int FUNC1 (int,char**,char*) ; 
 int nthread ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  signal_fuzzer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(int argc, char **argv)
{
	int opt;

	while ((opt = FUNC1(argc, argv, "bamxt:fi:h")) != -1) {
		if (opt == 'b') {
			FUNC2("Mess with TM before signal\n");
			args |= ARG_MESS_WITH_TM_BEFORE;
		} else if (opt == 'a') {
			FUNC2("Mess with TM at signal handler\n");
			args |= ARG_MESS_WITH_TM_AT;
		} else if (opt == 'm') {
			FUNC2("Mess with MSR[TS] bits in mcontext\n");
			args |= ARG_MESS_WITH_MSR_AT;
		} else if (opt == 'x') {
			FUNC2("Running with all options enabled\n");
			args |= ARG_COMPLETE;
		} else if (opt == 't') {
			nthread = FUNC0(optarg);
			FUNC2("Threads = %d\n", nthread);
		} else if (opt == 'f') {
			args |= ARG_FOREVER;
			FUNC2("Press ^C to stop\n");
			FUNC5(-1);
		} else if (opt == 'i') {
			count_max = FUNC0(optarg);
			FUNC2("Running for %d interactions\n", count_max);
		} else if (opt == 'h') {
			FUNC3(argv[0]);
		}
	}

	/* Default test suite */
	if (!args)
		args = ARG_COMPLETE;

	FUNC4(signal_fuzzer, "signal_fuzzer");
}