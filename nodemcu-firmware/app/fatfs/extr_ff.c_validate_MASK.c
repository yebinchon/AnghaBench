#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ id; int /*<<< orphan*/  pdrv; scalar_t__ fs_type; } ;
struct TYPE_7__ {scalar_t__ id; TYPE_2__* fs; } ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FFOBJID ;
typedef  TYPE_2__ FATFS ;

/* Variables and functions */
 scalar_t__ FR_INVALID_OBJECT ; 
 scalar_t__ FR_OK ; 
 scalar_t__ FR_TIMEOUT ; 
 int STA_NOINIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static FRESULT FUNC3 (	/* Returns FR_OK or FR_INVALID_OBJECT */
	FFOBJID* obj,			/* Pointer to the FFOBJID, the 1st member in the FIL/DIR object, to check validity */
	FATFS** rfs				/* Pointer to pointer to the owner filesystem object to return */
)
{
	FRESULT res = FR_INVALID_OBJECT;


	if (obj && obj->fs && obj->fs->fs_type && obj->id == obj->fs->id) {	/* Test if the object is valid */
#if FF_FS_REENTRANT
		if (lock_fs(obj->fs)) {	/* Obtain the filesystem object */
			if (!(disk_status(obj->fs->pdrv) & STA_NOINIT)) { /* Test if the phsical drive is kept initialized */
				res = FR_OK;
			} else {
				unlock_fs(obj->fs, FR_OK);
			}
		} else {
			res = FR_TIMEOUT;
		}
#else
		if (!(FUNC0(obj->fs->pdrv) & STA_NOINIT)) { /* Test if the phsical drive is kept initialized */
			res = FR_OK;
		}
#endif
	}
	*rfs = (res == FR_OK) ? obj->fs : 0;	/* Corresponding filesystem object */
	return res;
}