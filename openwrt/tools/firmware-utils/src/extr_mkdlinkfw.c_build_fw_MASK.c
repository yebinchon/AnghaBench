#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stag_header {int dummy; } ;
struct sch2_header {int dummy; } ;
struct TYPE_5__ {scalar_t__ file_size; int /*<<< orphan*/  file_name; } ;

/* Variables and functions */
 scalar_t__ ALL_HEADERS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int SCH2_SIZE ; 
 int STAG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sch2_header*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct stag_header*,int) ; 
 scalar_t__ firmware_size ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 TYPE_1__ kernel_info ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  ofname ; 
 int FUNC7 (TYPE_1__*,char*) ; 
 TYPE_1__ rootfs_info ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC9(void)
{
	char *buf;
	char *kernel_ptr;
	char *rootfs_ptr;
	int ret = EXIT_FAILURE;
	int writelen;

	struct stag_header *stag_header_kernel;
	struct sch2_header *sch2_header_kernel;

	if (!kernel_info.file_name | !rootfs_info.file_name)
		goto out;

	ret = FUNC4(&kernel_info);
	if (ret)
		goto out;
	ret = FUNC4(&rootfs_info);
	if (ret)
		goto out;

	buf = FUNC5(firmware_size);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto out;
	}

	if (rootfs_info.file_size + kernel_info.file_size + ALL_HEADERS_SIZE >
	    firmware_size) {
		FUNC0("data is bigger than firmware_size!\n");
		goto out;
	}

	FUNC6(buf, 0xff, firmware_size);

	stag_header_kernel = (struct stag_header *)buf;

	sch2_header_kernel =
	    (struct sch2_header *)((char *)stag_header_kernel + STAG_SIZE);
	kernel_ptr = (char *)sch2_header_kernel + SCH2_SIZE;

	ret = FUNC7(&kernel_info, kernel_ptr);
	if (ret)
		goto out_free_buf;

	rootfs_ptr = kernel_ptr + kernel_info.file_size;

	ret = FUNC7(&rootfs_info, rootfs_ptr);
	if (ret)
		goto out_free_buf;

	writelen = rootfs_ptr + rootfs_info.file_size - buf;

	FUNC1(sch2_header_kernel, kernel_ptr, rootfs_ptr);
	FUNC2(stag_header_kernel, kernel_info.file_size);

	ret = FUNC8(ofname, buf, writelen);
	if (ret)
		goto out_free_buf;

	ret = EXIT_SUCCESS;

 out_free_buf:
	FUNC3(buf);
 out:
	return ret;
}