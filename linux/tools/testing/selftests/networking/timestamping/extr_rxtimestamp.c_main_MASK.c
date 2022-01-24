#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int enabled; char* friendly_name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,...) ; 
 char FUNC3 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  long_options ; 
 void* op_size ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__* socket_types ; 
 TYPE_1__* test_cases ; 

int FUNC7(int argc, char **argv)
{
	bool all_protocols = true;
	bool all_tests = true;
	int arg_index = 0;
	int failures = 0;
	int s, t;
	char opt;

	while ((opt = FUNC3(argc, argv, "", long_options,
				  &arg_index)) != -1) {
		switch (opt) {
		case 'l':
			for (t = 0; t < FUNC0(test_cases); t++) {
				FUNC5("%d\t", t);
				FUNC4(&test_cases[t]);
			}
			return 0;
		case 'n':
			t = FUNC1(optarg);
			if (t >= FUNC0(test_cases))
				FUNC2(1, 0, "Invalid test case: %d", t);
			all_tests = false;
			test_cases[t].enabled = true;
			break;
		case 's':
			op_size = FUNC1(optarg);
			break;
		case 't':
			all_protocols = false;
			socket_types[2].enabled = true;
			break;
		case 'u':
			all_protocols = false;
			socket_types[1].enabled = true;
			break;
		case 'i':
			all_protocols = false;
			socket_types[0].enabled = true;
			break;
		default:
			FUNC2(1, 0, "Failed to parse parameters.");
		}
	}

	for (s = 0; s < FUNC0(socket_types); s++) {
		if (!all_protocols && !socket_types[s].enabled)
			continue;

		FUNC5("Testing %s...\n", socket_types[s].friendly_name);
		for (t = 0; t < FUNC0(test_cases); t++) {
			if (!all_tests && !test_cases[t].enabled)
				continue;

			FUNC5("Starting testcase %d...\n", t);
			if (FUNC6(socket_types[s], test_cases[t])) {
				failures++;
				FUNC5("FAILURE in test case ");
				FUNC4(&test_cases[t]);
			}
		}
	}
	if (!failures)
		FUNC5("PASSED.\n");
	return failures;
}