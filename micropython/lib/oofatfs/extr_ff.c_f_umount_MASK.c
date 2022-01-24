#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fs_type; int /*<<< orphan*/  sobj; } ;
typedef  int /*<<< orphan*/  FRESULT ;
typedef  TYPE_1__ FATFS ;

/* Variables and functions */
 int /*<<< orphan*/  FR_INT_ERR ; 
 int /*<<< orphan*/  FR_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

FRESULT FUNC2 (
    FATFS* fs                   /* Pointer to the file system object to unmount */
)
{
#if FF_FS_LOCK
    clear_lock(fs);
#endif
#if FF_FS_REENTRANT             /* Discard sync object of the current volume */
    if (!ff_del_syncobj(fs->sobj)) return FR_INT_ERR;
#endif
    fs->fs_type = 0;            /* Clear old fs object */

    return FR_OK;
}