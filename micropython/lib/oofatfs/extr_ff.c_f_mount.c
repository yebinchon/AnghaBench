
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sobj; scalar_t__ fs_type; } ;
typedef int FRESULT ;
typedef TYPE_1__ FATFS ;


 int FR_INT_ERR ;
 int LEAVE_FF (TYPE_1__*,int ) ;
 int ff_cre_syncobj (TYPE_1__*,int *) ;
 int find_volume (TYPE_1__*,int ) ;

FRESULT f_mount (
    FATFS* fs
)
{
    FRESULT res;

    fs->fs_type = 0;




    res = find_volume(fs, 0);
    LEAVE_FF(fs, res);
}
