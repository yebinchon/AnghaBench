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
struct TYPE_2__ {char* name; void (* run_client ) (unsigned int) ;void (* run_server ) (unsigned int) ;} ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int TEST_MODE_CLIENT ; 
 int TEST_MODE_SERVER ; 
 int TEST_MODE_UNSET ; 
 unsigned int VMADDR_CID_ANY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  longopts ; 
 char* optarg ; 
 int /*<<< orphan*/  optstring ; 
 unsigned int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 TYPE_1__* test_cases ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(int argc, char **argv)
{
	const char *control_host = NULL;
	const char *control_port = NULL;
	int mode = TEST_MODE_UNSET;
	unsigned int peer_cid = VMADDR_CID_ANY;
	int i;

	FUNC5();

	for (;;) {
		int opt = FUNC4(argc, argv, optstring, longopts, NULL);

		if (opt == -1)
			break;

		switch (opt) {
		case 'H':
			control_host = optarg;
			break;
		case 'm':
			if (FUNC8(optarg, "client") == 0)
				mode = TEST_MODE_CLIENT;
			else if (FUNC8(optarg, "server") == 0)
				mode = TEST_MODE_SERVER;
			else {
				FUNC3(stderr, "--mode must be \"client\" or \"server\"\n");
				return EXIT_FAILURE;
			}
			break;
		case 'p':
			peer_cid = FUNC6(optarg);
			break;
		case 'P':
			control_port = optarg;
			break;
		case '?':
		default:
			FUNC9();
		}
	}

	if (!control_port)
		FUNC9();
	if (mode == TEST_MODE_UNSET)
		FUNC9();
	if (peer_cid == VMADDR_CID_ANY)
		FUNC9();

	if (!control_host) {
		if (mode != TEST_MODE_SERVER)
			FUNC9();
		control_host = "0.0.0.0";
	}

	FUNC1(control_host, control_port, mode == TEST_MODE_SERVER);

	for (i = 0; test_cases[i].name; i++) {
		void (*run)(unsigned int peer_cid);

		FUNC7("%s...", test_cases[i].name);
		FUNC2(stdout);

		if (mode == TEST_MODE_CLIENT)
			run = test_cases[i].run_client;
		else
			run = test_cases[i].run_server;

		if (run)
			run(peer_cid);

		FUNC7("ok\n");
	}

	FUNC0();
	return EXIT_SUCCESS;
}