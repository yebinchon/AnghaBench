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
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_TAI ; 
 int /*<<< orphan*/  cfg_clockid ; 
 int cfg_do_ipv4 ; 
 int cfg_do_ipv6 ; 
 int /*<<< orphan*/  cfg_in ; 
 int cfg_num_pkt ; 
 int /*<<< orphan*/  cfg_out ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(int argc, char **argv)
{
	int c, ilen, olen;

	while ((c = FUNC1(argc, argv, "46c:")) != -1) {
		switch (c) {
		case '4':
			cfg_do_ipv4 = true;
			break;
		case '6':
			cfg_do_ipv6 = true;
			break;
		case 'c':
			if (!FUNC3(optarg, "tai"))
				cfg_clockid = CLOCK_TAI;
			else if (!FUNC3(optarg, "monotonic") ||
				 !FUNC3(optarg, "mono"))
				cfg_clockid = CLOCK_MONOTONIC;
			else
				FUNC0(1, 0, "unknown clock id %s", optarg);
			break;
		default:
			FUNC0(1, 0, "parse error at %d", optind);
		}
	}

	if (argc - optind != 2)
		FUNC0(1, 0, "Usage: %s [-46] -c <clock> <in> <out>", argv[0]);

	ilen = FUNC2(argv[optind], cfg_in);
	olen = FUNC2(argv[optind + 1], cfg_out);
	if (ilen != olen)
		FUNC0(1, 0, "i/o streams len mismatch (%d, %d)\n", ilen, olen);
	cfg_num_pkt = ilen;
}