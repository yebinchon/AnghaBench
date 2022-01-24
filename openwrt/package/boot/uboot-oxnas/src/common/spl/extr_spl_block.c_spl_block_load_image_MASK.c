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
typedef  int /*<<< orphan*/  block_dev_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SYS_BLOCK_RAW_MODE_U_BOOT_SECTOR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(void)
{
	int err;
	block_dev_desc_t * device;

	device = FUNC3();
#ifdef CONFIG_SPL_OS_BOOT
	if (spl_start_uboot() || block_load_image_raw_os(device))
#endif
	{
		err = FUNC0(device,
					 CONFIG_SYS_BLOCK_RAW_MODE_U_BOOT_SECTOR);
		if (err)
			FUNC2();
	}
}