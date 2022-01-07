
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int last_clst; int n_fatent; scalar_t__ free_clst; scalar_t__ fs_type; int fsi_flag; } ;
struct TYPE_9__ {int stat; int n_frag; scalar_t__ sclust; scalar_t__ n_cont; TYPE_2__* fs; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FFOBJID ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;


 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 scalar_t__ change_bitmap (TYPE_2__*,int,int,int) ;
 scalar_t__ fill_last_frag (TYPE_1__*,int,int) ;
 int find_bitmap (TYPE_2__*,int,int) ;
 int get_fat (TYPE_1__*,int) ;
 scalar_t__ put_fat (TYPE_2__*,int,int) ;

__attribute__((used)) static DWORD create_chain (
    FFOBJID* obj,
    DWORD clst
)
{
    DWORD cs, ncl, scl;
    FRESULT res;
    FATFS *fs = obj->fs;


    if (clst == 0) {
        scl = fs->last_clst;
        if (scl == 0 || scl >= fs->n_fatent) scl = 1;
    }
    else {
        cs = get_fat(obj, clst);
        if (cs < 2) return 1;
        if (cs == 0xFFFFFFFF) return cs;
        if (cs < fs->n_fatent) return cs;
        scl = clst;
    }
    if (fs->free_clst == 0) return 0;
    {
        ncl = 0;
        if (scl == clst) {
            ncl = scl + 1;
            if (ncl >= fs->n_fatent) ncl = 2;
            cs = get_fat(obj, ncl);
            if (cs == 1 || cs == 0xFFFFFFFF) return cs;
            if (cs != 0) {
                cs = fs->last_clst;
                if (cs >= 2 && cs < fs->n_fatent) scl = cs;
                ncl = 0;
            }
        }
        if (ncl == 0) {
            ncl = scl;
            for (;;) {
                ncl++;
                if (ncl >= fs->n_fatent) {
                    ncl = 2;
                    if (ncl > scl) return 0;
                }
                cs = get_fat(obj, ncl);
                if (cs == 0) break;
                if (cs == 1 || cs == 0xFFFFFFFF) return cs;
                if (ncl == scl) return 0;
            }
        }
        res = put_fat(fs, ncl, 0xFFFFFFFF);
        if (res == FR_OK && clst != 0) {
            res = put_fat(fs, clst, ncl);
        }
    }

    if (res == FR_OK) {
        fs->last_clst = ncl;
        if (fs->free_clst <= fs->n_fatent - 2) fs->free_clst--;
        fs->fsi_flag |= 1;
    } else {
        ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;
    }

    return ncl;
}
