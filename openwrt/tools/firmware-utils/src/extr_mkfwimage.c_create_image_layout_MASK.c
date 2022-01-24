#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int32_t ;
struct TYPE_7__ {int partition_index; int partition_baseaddr; scalar_t__ partition_length; int partition_memaddr; int partition_entryaddr; int /*<<< orphan*/  filename; int /*<<< orphan*/  partition_name; } ;
typedef  TYPE_2__ part_data_t ;
struct TYPE_8__ {int part_count; TYPE_1__* fwinfo; TYPE_2__* parts; } ;
typedef  TYPE_3__ image_info_t ;
struct TYPE_9__ {int kern_start; int kern_entry; scalar_t__ firmware_max_length; } ;
typedef  TYPE_4__ fw_layout_t ;
struct TYPE_6__ {char* name; TYPE_4__ fw_layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__,scalar_t__,scalar_t__) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC5(const char* kernelfile, const char* rootfsfile, image_info_t* im)
{
	uint32_t rootfs_len = 0;
	part_data_t* kernel = &im->parts[0];
	part_data_t* rootfs = &im->parts[1];

	fw_layout_t* p = &im->fwinfo->fw_layout;

	FUNC2("board = %s\n", im->fwinfo->name);
	FUNC3(kernel->partition_name, "kernel");
	kernel->partition_index = 1;
	kernel->partition_baseaddr = p->kern_start;
	if ( (kernel->partition_length = FUNC1(kernelfile)) == (u_int32_t)-1) return (-1);
	kernel->partition_memaddr = p->kern_entry;
	kernel->partition_entryaddr = p->kern_entry;
	FUNC4(kernel->filename, kernelfile, sizeof(kernel->filename));

	rootfs_len = FUNC1(rootfsfile);
	if (rootfs_len + kernel->partition_length > p->firmware_max_length) {
		FUNC0("File '%s' too big (0x%08X) - max size: 0x%08X (exceeds %u bytes)\n",
		       rootfsfile, rootfs_len, p->firmware_max_length,
		       (rootfs_len + kernel->partition_length) - p->firmware_max_length);
		return (-2);
	}

	FUNC3(rootfs->partition_name, "rootfs");
	rootfs->partition_index = 2;
	rootfs->partition_baseaddr = kernel->partition_baseaddr + kernel->partition_length;
	rootfs->partition_length = p->firmware_max_length - kernel->partition_length;
	rootfs->partition_memaddr = 0x00000000;
	rootfs->partition_entryaddr = 0x00000000;
	FUNC4(rootfs->filename, rootfsfile, sizeof(rootfs->filename));

	FUNC2("kernel: %d 0x%08x\n", kernel->partition_length, kernel->partition_baseaddr);
	FUNC2("root: %d 0x%08x\n", rootfs->partition_length, rootfs->partition_baseaddr);
	im->part_count = 2;

	return 0;
}