
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fs_type; int sobj; } ;
typedef int FRESULT ;
typedef TYPE_1__ FATFS ;


 int FR_INT_ERR ;
 int FR_OK ;
 int clear_lock (TYPE_1__*) ;
 int ff_del_syncobj (int ) ;

FRESULT f_umount (
    FATFS* fs
)
{






    fs->fs_type = 0;

    return FR_OK;
}
