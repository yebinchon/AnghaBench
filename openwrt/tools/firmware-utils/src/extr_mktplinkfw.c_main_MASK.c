#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fw_header {int dummy; } ;
struct TYPE_6__ {void* file_name; } ;
struct TYPE_5__ {void* file_name; } ;
struct TYPE_4__ {void* file_name; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int add_jffs2_eof ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  combined ; 
 void* country ; 
 int endian_swap ; 
 int extract ; 
 void* fw_ver ; 
 int FUNC3 (int,char**,char*) ; 
 int FUNC4 () ; 
 TYPE_3__ inspect_info ; 
 int /*<<< orphan*/  kernel_ep ; 
 TYPE_2__ kernel_info ; 
 int /*<<< orphan*/  kernel_la ; 
 void* layout_id ; 
 void* ofname ; 
 int /*<<< orphan*/  opt_hdr_ver ; 
 void* opt_hw_id ; 
 void* opt_hw_rev ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  reserved_space ; 
 int /*<<< orphan*/  rootfs_align ; 
 TYPE_1__ rootfs_info ; 
 int /*<<< orphan*/  rootfs_ofs ; 
 int rootfs_ofs_calc ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,int /*<<< orphan*/ *) ; 
 int strip_padding ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* vendor ; 
 void* version ; 

int FUNC7(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;

	progname = FUNC0(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC3(argc, argv, "a:H:E:F:L:m:V:N:W:C:ci:k:r:R:o:OxX:ehsjv:");
		if (c == -1)
			break;

		switch (c) {
		case 'a':
			FUNC5(optarg, "0x%x", &rootfs_align);
			break;
		case 'H':
			opt_hw_id = optarg;
			break;
		case 'E':
			FUNC5(optarg, "0x%x", &kernel_ep);
			break;
		case 'F':
			layout_id = optarg;
			break;
		case 'W':
			opt_hw_rev = optarg;
			break;
		case 'C':
			country = optarg;
			break;
		case 'L':
			FUNC5(optarg, "0x%x", &kernel_la);
			break;
		case 'm':
			FUNC5(optarg, "%u", &opt_hdr_ver);
			break;
		case 'V':
			version = optarg;
			break;
		case 'v':
			fw_ver = optarg;
			break;
		case 'N':
			vendor = optarg;
			break;
		case 'c':
			combined++;
			break;
		case 'k':
			kernel_info.file_name = optarg;
			break;
		case 'r':
			rootfs_info.file_name = optarg;
			break;
		case 'R':
			FUNC5(optarg, "0x%x", &rootfs_ofs);
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'O':
			rootfs_ofs_calc = 1;
			break;
		case 's':
			strip_padding = 1;
			break;
		case 'i':
			inspect_info.file_name = optarg;
			break;
		case 'j':
			add_jffs2_eof = 1;
			break;
		case 'x':
			extract = 1;
			break;
		case 'e':
			endian_swap = true;
			break;
		case 'h':
			FUNC6(EXIT_SUCCESS);
			break;
		case 'X':
			FUNC5(optarg, "0x%x", &reserved_space);
			break;
		default:
			FUNC6(EXIT_FAILURE);
			break;
		}
	}

	ret = FUNC2();
	if (ret)
		goto out;

	if (!inspect_info.file_name)
		ret = FUNC1(sizeof(struct fw_header));
	else
		ret = FUNC4();

 out:
	return ret;
}