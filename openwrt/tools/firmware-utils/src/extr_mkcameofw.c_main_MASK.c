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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,void*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int combined ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  image_size ; 
 TYPE_2__ kernel_info ; 
 int /*<<< orphan*/  kernel_size ; 
 void* model ; 
 void* ofname ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 void* region ; 
 TYPE_1__ rootfs_info ; 
 void* signature ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* version ; 

int FUNC7(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;

	progname = FUNC1(argv[0]);

	while (1) {
		int c;

		c = FUNC4(argc, argv, "M:S:V:R:k:K:I:r:o:hc");
		if (c == -1)
			break;

		switch (c) {
		case 'M':
			model = optarg;
			break;
		case 'S':
			signature = optarg;
			break;
		case 'V':
			version = optarg;
			break;
		case 'R':
			region = optarg;
			break;
		case 'k':
			kernel_info.file_name = optarg;
			break;
		case 'K':
			if (FUNC5(optarg, &kernel_size)) {
				FUNC0("%s is invalid '%s'",
				    "kernel size", optarg);
				goto out;
			}
			break;
		case 'I':
			if (FUNC5(optarg, &image_size)) {
				FUNC0("%s is invalid '%s'",
				    "image size", optarg);
				goto out;
			}
			break;
		case 'r':
			rootfs_info.file_name = optarg;
			break;
		case 'c':
			combined = 1;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'h':
			FUNC6(EXIT_SUCCESS);
			break;
		default:
			FUNC6(EXIT_FAILURE);
			break;
		}
	}

	ret = FUNC3();
	if (ret)
		goto out;

	ret = FUNC2();

out:
	return ret;
}