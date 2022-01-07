
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ objsize; int sclust; } ;
struct TYPE_11__ {int n_fatent; int drv; } ;
struct TYPE_10__ {int flag; scalar_t__ fptr; int sect; int buf; TYPE_3__ obj; int clust; scalar_t__ err; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 int ABORT (TYPE_2__*,scalar_t__) ;
 int FA_DIRTY ;
 int FA_MODIFIED ;
 int FA_WRITE ;
 scalar_t__ FR_DENIED ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_OK ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 scalar_t__ disk_write (int ,int ,int ,int) ;
 int get_fat (TYPE_3__*,int ) ;
 scalar_t__ remove_chain (TYPE_3__*,int,int ) ;
 scalar_t__ validate (TYPE_3__*,TYPE_2__**) ;

FRESULT f_truncate (
    FIL* fp
)
{
    FRESULT res;
    FATFS *fs;
    DWORD ncl;


    res = validate(&fp->obj, &fs);
    if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);
    if (!(fp->flag & FA_WRITE)) LEAVE_FF(fs, FR_DENIED);

    if (fp->fptr < fp->obj.objsize) {
        if (fp->fptr == 0) {
            res = remove_chain(&fp->obj, fp->obj.sclust, 0);
            fp->obj.sclust = 0;
        } else {
            ncl = get_fat(&fp->obj, fp->clust);
            res = FR_OK;
            if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
            if (ncl == 1) res = FR_INT_ERR;
            if (res == FR_OK && ncl < fs->n_fatent) {
                res = remove_chain(&fp->obj, ncl, fp->clust);
            }
        }
        fp->obj.objsize = fp->fptr;
        fp->flag |= FA_MODIFIED;

        if (res == FR_OK && (fp->flag & FA_DIRTY)) {
            if (disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) {
                res = FR_DISK_ERR;
            } else {
                fp->flag &= (BYTE)~FA_DIRTY;
            }
        }

        if (res != FR_OK) ABORT(fs, res);
    }

    LEAVE_FF(fs, res);
}
