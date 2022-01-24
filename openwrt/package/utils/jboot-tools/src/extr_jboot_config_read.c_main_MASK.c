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
struct data_header {int dummy; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int MAX_DATA_HEADER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * buffer ; 
 scalar_t__ config_size ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,struct data_header**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/ * ifname ; 
 int mac_print ; 
 int /*<<< orphan*/ * ofname ; 
 void* optarg ; 
 int print_data ; 
 int /*<<< orphan*/  FUNC5 (struct data_header*) ; 
 int /*<<< orphan*/  FUNC6 (struct data_header**,int) ; 
 int /*<<< orphan*/  progname ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,scalar_t__*) ; 
 scalar_t__ start_offset ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int verbose ; 
 int FUNC10 (struct data_header**,int) ; 

int FUNC11(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;
	int configs_counter = 0;
	struct data_header *configs_table[MAX_DATA_HEADER];
	buffer = NULL;
	config_size = 0;

	progname = FUNC1(argv[0]);
	start_offset = 0;
	mac_print = 0;
	print_data = 0;
	verbose = 0;
	ofname = NULL;
	ifname = NULL;

	while (1) {
		int c;

		c = FUNC4(argc, argv, "de:hi:mo:pv");
		if (c == -1)
			break;

		switch (c) {
		case 'm':
			mac_print = 1;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'e':
			ofname = optarg;
			break;
		case 'o':
			FUNC8(optarg, "0x%x", &start_offset);
			break;
		case 'p':
			print_data = 1;
			break;
		case 'v':
			verbose = 1;
			FUNC0("Enable verbose!");
			break;
		default:
			FUNC9(EXIT_FAILURE);
			break;
		}
	}

	if (!ifname)
		FUNC9(EXIT_FAILURE);

	ret = FUNC7(ifname);

	if (ret || config_size <= 0)
		goto out;

	configs_counter = FUNC2(buffer, config_size, configs_table);

	if (configs_counter <= 0)
		goto out_free_buf;

	if (print_data || verbose) {
		for (int i = 0; i < configs_counter; i++)
			FUNC5(configs_table[i]);
	}

	if (mac_print)
		FUNC6(configs_table, configs_counter);

	ret = EXIT_SUCCESS;

	if (ofname)
		ret = FUNC10(configs_table, configs_counter);

 out_free_buf:
	FUNC3(buffer);
 out:
	return ret;

}