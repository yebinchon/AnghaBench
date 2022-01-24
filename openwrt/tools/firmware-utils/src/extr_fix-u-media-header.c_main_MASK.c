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
struct TYPE_2__ {void* file_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,void*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  board_id ; 
 int FUNC2 () ; 
 int factory_defaults ; 
 int FUNC3 () ; 
 int FUNC4 (int,char**,char*) ; 
 TYPE_1__ if_info ; 
 int /*<<< orphan*/  image_type ; 
 void* ofname ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;

	progname = FUNC1(argv[0]);

	while (1) {
		int c;

		c = FUNC4(argc, argv, "B:Fi:o:T:h");
		if (c == -1)
			break;

		switch (c) {
		case 'B':
			if (FUNC5(optarg, &board_id)) {
				FUNC0("%s is invalid '%s'",
				    "board ID", optarg);
				goto out;
			}
			break;
		case 'T':
			if (FUNC6(optarg, &image_type)) {
				FUNC0("%s is invalid '%s'",
				    "image type", optarg);
				goto out;
			}
			break;
		case 'F':
			factory_defaults = 1;
			break;
		case 'i':
			if_info.file_name = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'h':
			FUNC7(EXIT_SUCCESS);
			break;
		default:
			FUNC7(EXIT_FAILURE);
			break;
		}
	}

	ret = FUNC2();
	if (ret)
		goto out;

	ret = FUNC3();

out:
	return ret;
}