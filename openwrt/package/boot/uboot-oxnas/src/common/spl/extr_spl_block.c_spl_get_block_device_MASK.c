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
 int /*<<< orphan*/  CONFIG_SPL_BLOCKDEV_ID ; 
 char* CONFIG_SPL_BLOCKDEV_INTERFACE ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

block_dev_desc_t * FUNC4(void)
{
	block_dev_desc_t * device;

	FUNC3();

	device = FUNC0(CONFIG_SPL_BLOCKDEV_INTERFACE, CONFIG_SPL_BLOCKDEV_ID);
	if (!device) {
		FUNC2("blk device %s%d not exists\n",
			CONFIG_SPL_BLOCKDEV_INTERFACE,
			CONFIG_SPL_BLOCKDEV_ID);
		FUNC1();
	}

	return device;
}