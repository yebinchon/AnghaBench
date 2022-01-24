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
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 void* crypt_key ; 
 int FUNC2 () ; 
 int do_decrypt ; 
 int FUNC3 () ; 
 int FUNC4 (int,char**,char*) ; 
 void* ifname ; 
 int longstate ; 
 void* magic ; 
 void* offset ; 
 void* ofname ; 
 void* optarg ; 
 void* product ; 
 int /*<<< orphan*/  progname ; 
 void* seed ; 
 void* size ; 
 void* FUNC5 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* version ; 

int FUNC7(int argc, char *argv[])
{
	int res = EXIT_FAILURE;
	int err;

	progname = FUNC0(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC4(argc, argv, "adi:m:o:hlp:v:k:O:r:s:S:");
		if (c == -1)
			break;

		switch (c) {
		case 'd':
			do_decrypt = 1;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'l':
			longstate = 1;
			break;
		case 'm':
			magic = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'p':
			product = optarg;
			break;
		case 'v':
			version = optarg;
			break;
		case 'k':
			crypt_key = optarg;
			break;
		case 's':
			seed = FUNC5(optarg, NULL, 16);
			break;
		case 'O':
			offset = FUNC5(optarg, NULL, 0);
			break;
		case 'S':
			size = FUNC5(optarg, NULL, 0);
			break;
		case 'h':
			FUNC6(EXIT_SUCCESS);
			break;
		default:
			FUNC6(EXIT_FAILURE);
			break;
		}
	}

	err = FUNC1();
	if (err)
		goto out;

	if (do_decrypt)
		err = FUNC2();
	else
		err = FUNC3();

	if (err)
		goto out;

	res = EXIT_SUCCESS;

out:
	return res;
}