#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* file_name; } ;
struct TYPE_3__ {void* file_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* board_id ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int,char**,char*) ; 
 TYPE_2__ kernel_info ; 
 void* ofname ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 TYPE_1__ rootfs_info ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;
	int err;

	FILE *outfile;

	progname = FUNC0(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC3(argc, argv, "B:k:r:o:h");
		if (c == -1)
			break;

		switch (c) {
		case 'B':
			board_id = optarg;
			break;
		case 'k':
			kernel_info.file_name = optarg;
			break;
		case 'r':
			rootfs_info.file_name = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'h':
			FUNC4(EXIT_SUCCESS);
			break;
		default:
			FUNC4(EXIT_FAILURE);
			break;
		}
	}

	ret = FUNC2();
	if (ret)
		goto out;

	ret = FUNC1();

 out:
	return ret;
}