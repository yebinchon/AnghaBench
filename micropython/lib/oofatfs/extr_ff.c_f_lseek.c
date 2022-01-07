
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int sclust; int objsize; } ;
struct TYPE_15__ {scalar_t__ fs_type; int n_fatent; int csize; int drv; } ;
struct TYPE_14__ {int clust; int* cltbl; int fptr; int sect; int flag; int buf; TYPE_3__ obj; scalar_t__ err; } ;
typedef int FSIZE_t ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 int ABORT (TYPE_2__*,int ) ;
 int CREATE_LINKMAP ;
 int FA_DIRTY ;
 int FA_MODIFIED ;
 int FA_WRITE ;
 scalar_t__ FF_FS_EXFAT ;
 scalar_t__ FF_FS_READONLY ;
 int FR_DISK_ERR ;
 int FR_INT_ERR ;
 scalar_t__ FR_NOT_ENOUGH_CORE ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 int SS (TYPE_2__*) ;
 int clmt_clust (TYPE_1__*,int) ;
 int clst2sect (TYPE_2__*,int) ;
 int create_chain (TYPE_3__*,int) ;
 scalar_t__ disk_read (int ,int ,int,int) ;
 scalar_t__ disk_write (int ,int ,int,int) ;
 scalar_t__ fill_last_frag (TYPE_3__*,int,int) ;
 int get_fat (TYPE_3__*,int) ;
 scalar_t__ validate (TYPE_3__*,TYPE_2__**) ;

FRESULT f_lseek (
    FIL* fp,
    FSIZE_t ofs
)
{
    FRESULT res;
    FATFS *fs;
    DWORD clst, bcs, nsect;
    FSIZE_t ifptr;




    res = validate(&fp->obj, &fs);
    if (res == FR_OK) res = (FRESULT)fp->err;





    if (res != FR_OK) LEAVE_FF(fs, res);
    {



        if (ofs > fp->obj.objsize && (FF_FS_READONLY || !(fp->flag & FA_WRITE))) {
            ofs = fp->obj.objsize;
        }
        ifptr = fp->fptr;
        fp->fptr = nsect = 0;
        if (ofs > 0) {
            bcs = (DWORD)fs->csize * SS(fs);
            if (ifptr > 0 &&
                (ofs - 1) / bcs >= (ifptr - 1) / bcs) {
                fp->fptr = (ifptr - 1) & ~(FSIZE_t)(bcs - 1);
                ofs -= fp->fptr;
                clst = fp->clust;
            } else {
                clst = fp->obj.sclust;

                if (clst == 0) {
                    clst = create_chain(&fp->obj, 0);
                    if (clst == 1) ABORT(fs, FR_INT_ERR);
                    if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
                    fp->obj.sclust = clst;
                }

                fp->clust = clst;
            }
            if (clst != 0) {
                while (ofs > bcs) {
                    ofs -= bcs; fp->fptr += bcs;

                    if (fp->flag & FA_WRITE) {
                        if (FF_FS_EXFAT && fp->fptr > fp->obj.objsize) {
                            fp->obj.objsize = fp->fptr;
                            fp->flag |= FA_MODIFIED;
                        }
                        clst = create_chain(&fp->obj, clst);
                        if (clst == 0) {
                            ofs = 0; break;
                        }
                    } else

                    {
                        clst = get_fat(&fp->obj, clst);
                    }
                    if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
                    if (clst <= 1 || clst >= fs->n_fatent) ABORT(fs, FR_INT_ERR);
                    fp->clust = clst;
                }
                fp->fptr += ofs;
                if (ofs % SS(fs)) {
                    nsect = clst2sect(fs, clst);
                    if (nsect == 0) ABORT(fs, FR_INT_ERR);
                    nsect += (DWORD)(ofs / SS(fs));
                }
            }
        }
        if (!FF_FS_READONLY && fp->fptr > fp->obj.objsize) {
            fp->obj.objsize = fp->fptr;
            fp->flag |= FA_MODIFIED;
        }
        if (fp->fptr % SS(fs) && nsect != fp->sect) {


            if (fp->flag & FA_DIRTY) {
                if (disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
                fp->flag &= (BYTE)~FA_DIRTY;
            }

            if (disk_read(fs->drv, fp->buf, nsect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);

            fp->sect = nsect;
        }
    }

    LEAVE_FF(fs, res);
}
