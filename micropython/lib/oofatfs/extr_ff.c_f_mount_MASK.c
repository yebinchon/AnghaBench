#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sobj; scalar_t__ fs_type; } ;
typedef  int /*<<< orphan*/  FRESULT ;
typedef  TYPE_1__ FATFS ;

/* Variables and functions */
 int /*<<< orphan*/  FR_INT_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

FRESULT FUNC3 (
    FATFS* fs           /* Pointer to the file system object to mount */
)
{
    FRESULT res;

    fs->fs_type = 0;                    /* Clear new fs object */
#if FF_FS_REENTRANT                     /* Create sync object for the new volume */
    if (!ff_cre_syncobj(fs, &fs->sobj)) return FR_INT_ERR;
#endif

    res = FUNC2(fs, 0);           /* Force mounted the volume */
    FUNC0(fs, res);
}