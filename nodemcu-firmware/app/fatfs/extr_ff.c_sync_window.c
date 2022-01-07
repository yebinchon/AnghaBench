
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ winsect; scalar_t__ fatbase; scalar_t__ fsize; int n_fats; int win; int pdrv; scalar_t__ wflag; } ;
typedef int FRESULT ;
typedef TYPE_1__ FATFS ;


 int FR_DISK_ERR ;
 int FR_OK ;
 scalar_t__ RES_OK ;
 scalar_t__ disk_write (int ,int ,scalar_t__,int) ;

__attribute__((used)) static FRESULT sync_window (
 FATFS* fs
)
{
 FRESULT res = FR_OK;


 if (fs->wflag) {
  if (disk_write(fs->pdrv, fs->win, fs->winsect, 1) == RES_OK) {
   fs->wflag = 0;
   if (fs->winsect - fs->fatbase < fs->fsize) {
    if (fs->n_fats == 2) disk_write(fs->pdrv, fs->win, fs->winsect + fs->fsize, 1);
   }
  } else {
   res = FR_DISK_ERR;
  }
 }
 return res;
}
