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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char FUNC2 (int,char**,char*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  iterations ; 
 int /*<<< orphan*/  optarg ; 
 TYPE_1__* options ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  test_mmap ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(int argc, char *argv[])
{
	signed char c;
	while (1) {
		int option_index = 0;

		c = FUNC2(argc, argv, "", options, &option_index);

		if (c == -1)
			break;

		switch (c) {
		case 0:
			if (options[option_index].flag != 0)
				break;

			FUNC5();
			FUNC1(1);
			break;
		case 'i':
			iterations = FUNC0(optarg);
			break;
		default:
			FUNC5();
			FUNC1(1);
		}
	}

	FUNC4(300);
	return FUNC3(test_mmap, "mmap_bench");
}