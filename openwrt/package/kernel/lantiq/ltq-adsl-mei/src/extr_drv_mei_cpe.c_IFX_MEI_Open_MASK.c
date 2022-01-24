#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * private_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_rdev; } ;
typedef  TYPE_1__ DSL_DRV_inode_t ;
typedef  TYPE_2__ DSL_DRV_file_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (DSL_DRV_inode_t * ino, DSL_DRV_file_t * fil)
{
	int maj = FUNC2 (ino->i_rdev);
	int num = FUNC3 (ino->i_rdev);

	DSL_DEV_Device_t *pDev = NULL;
	if ((pDev = FUNC0 (maj, num)) == NULL) {
		FUNC1("open(%d:%d) fail!\n", maj, num);
		return -EIO;
	}
	fil->private_data = pDev;
	return 0;
}