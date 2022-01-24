#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  bench_proc ; 
 int FUNC1 (char*) ; 
 int cpu ; 
 scalar_t__ do_exec ; 
 scalar_t__ do_fork ; 
 scalar_t__ do_vfork ; 
 char* exec_file ; 
 scalar_t__ exec_target ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char FUNC3 (int,char**,char*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* optarg ; 
 int optind ; 
 TYPE_1__* options ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char* FUNC12 (char*) ; 
 int FUNC13 (char*) ; 
 void* timeout ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(int argc, char *argv[])
{
	signed char c;

	while (1) {
		int option_index = 0;

		c = FUNC3(argc, argv, "", options, &option_index);

		if (c == -1)
			break;

		switch (c) {
		case 0:
			if (options[option_index].flag != 0)
				break;

			FUNC14();
			FUNC2(1);
			break;

		case 's':
			timeout = FUNC0(optarg);
			break;

		default:
			FUNC14();
			FUNC2(1);
		}
	}

	if (do_fork && do_vfork) {
		FUNC14();
		FUNC2(1);
	}
	if (do_exec && !do_fork && !do_vfork) {
		FUNC14();
		FUNC2(1);
	}

	if (do_exec) {
		char *dirname = FUNC12(argv[0]);
		int i;
		i = FUNC13(dirname) - 1;
		while (i) {
			if (dirname[i] == '/') {
				dirname[i] = '\0';
				if (FUNC1(dirname) == -1) {
					FUNC5("chdir");
					FUNC2(1);
				}
				break;
			}
			i--;
		}
	}

	if (exec_target) {
		FUNC2(0);
	}

	if (((argc - optind) != 1)) {
		cpu = -1;
	} else {
		cpu = FUNC0(argv[optind++]);
	}

	if (do_exec)
		exec_file = argv[0];

	FUNC7(cpu);

	FUNC6("Using ");
	if (do_fork)
		FUNC6("fork");
	else if (do_vfork)
		FUNC6("vfork");
	else
		FUNC6("clone");

	if (do_exec)
		FUNC6(" + exec");

	FUNC6(" on cpu %d\n", cpu);

	/* Create a new process group so we can signal everyone for exit */
	FUNC8(FUNC4(), FUNC4());

	FUNC9(SIGUSR1, sigusr1_handler);

	FUNC11(bench_proc, NULL, cpu);

	while (1)
		FUNC10(3600);

	return 0;
}