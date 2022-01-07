
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ id; int drv; scalar_t__ fs_type; } ;
struct TYPE_7__ {scalar_t__ id; TYPE_2__* fs; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FFOBJID ;
typedef TYPE_2__ FATFS ;
typedef int DSTATUS ;


 scalar_t__ FR_INVALID_OBJECT ;
 scalar_t__ FR_OK ;
 scalar_t__ FR_TIMEOUT ;
 int IOCTL_STATUS ;
 scalar_t__ RES_OK ;
 int STA_NOINIT ;
 scalar_t__ disk_ioctl (int ,int ,int*) ;
 scalar_t__ lock_fs (TYPE_2__*) ;
 int unlock_fs (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static FRESULT validate (
    FFOBJID* obj,
    FATFS** rfs
)
{
    FRESULT res = FR_INVALID_OBJECT;
    DSTATUS stat;


    if (obj && obj->fs && obj->fs->fs_type && obj->id == obj->fs->id) {
        if (disk_ioctl(obj->fs->drv, IOCTL_STATUS, &stat) == RES_OK && !(stat & STA_NOINIT)) {
            res = FR_OK;
        }

    }
    *rfs = (res == FR_OK) ? obj->fs : 0;
    return res;
}
