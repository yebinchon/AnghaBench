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
 int /*<<< orphan*/  Configindex ; 
 int EOF ; 
 int /*<<< orphan*/  Passfile ; 
 char* Progname ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 

int FUNC5(int argc, char **argv)
{
	int c;

	Progname = *argv;

	/* Parse option arguments. */

	while ((c = FUNC4(argc, argv, "n:p:")) != EOF) {
		switch (c) {

		case 'n':
			Configindex = FUNC1(optarg);
			break;

		case 'p':
			Passfile = optarg;
			break;

		default:
			FUNC0();
			FUNC3(1);
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 1) {
		FUNC0();
		FUNC3(1);
	}
	FUNC2(argv[0]);

	return 0;
}