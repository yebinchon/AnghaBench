
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fs; int lockid; } ;
struct TYPE_5__ {TYPE_2__ obj; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef int FATFS ;


 scalar_t__ FR_OK ;
 scalar_t__ dec_lock (int ) ;
 scalar_t__ f_sync (TYPE_1__*) ;
 int unlock_fs (int *,scalar_t__) ;
 scalar_t__ validate (TYPE_2__*,int **) ;

FRESULT f_close (
    FIL* fp
)
{
    FRESULT res;
    FATFS *fs;


    res = f_sync(fp);
    if (res == FR_OK)

    {
        res = validate(&fp->obj, &fs);
        if (res == FR_OK) {




            fp->obj.fs = 0;




        }
    }
    return res;
}
