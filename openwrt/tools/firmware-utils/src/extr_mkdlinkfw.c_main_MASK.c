#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* file_name; } ;
struct TYPE_7__ {void* file_name; } ;
struct TYPE_6__ {void* file_name; } ;
struct TYPE_5__ {void* file_name; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 scalar_t__ FACTORY ; 
 scalar_t__ JBOOT_SIZE ; 
 scalar_t__ SYSUPGRADE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ family_member ; 
 scalar_t__ firmware_size ; 
 int FUNC3 (int,char**,char*) ; 
 TYPE_4__ image_info ; 
 scalar_t__ image_offset ; 
 scalar_t__ image_type ; 
 int FUNC4 () ; 
 TYPE_3__ inspect_info ; 
 TYPE_2__ kernel_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 void* ofname ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  rom_id ; 
 TYPE_1__ rootfs_info ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,scalar_t__*) ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 () ; 

int FUNC10(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;

	progname = FUNC0(argv[0]);
	image_type = SYSUPGRADE;
	family_member = 0;
	firmware_size = 0;
	image_offset = JBOOT_SIZE;

	while (1) {
		int c;

		c = FUNC3(argc, argv, "f:F:i:hk:m:o:O:r:s:");
		if (c == -1)
			break;

		switch (c) {
		case 'f':
			FUNC6(optarg, "0x%hx", &family_member);
			break;
		case 'F':
			image_info.file_name = optarg;
			image_type = FACTORY;
			break;
		case 'i':
			inspect_info.file_name = optarg;
			break;
		case 'k':
			kernel_info.file_name = optarg;
			break;
		case 'm':
			if (FUNC7(optarg) == 12)
				FUNC5(rom_id, optarg, 12);
			break;
		case 'r':
			rootfs_info.file_name = optarg;
			break;
		case 'O':
			FUNC6(optarg, "0x%x", &image_offset);
			break;
		case 'o':
			ofname = optarg;
			break;
		case 's':
			FUNC6(optarg, "0x%x", &firmware_size);
			break;
		default:
			FUNC8(EXIT_FAILURE);
			break;
		}
	}

	ret = FUNC2();
	if (ret)
		goto out;

	if (!inspect_info.file_name) {
		if (image_type == FACTORY)
			ret = FUNC9();
		else
			ret = FUNC1();
		}
	else
		ret = FUNC4();

 out:
	return ret;

}