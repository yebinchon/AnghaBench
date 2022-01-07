
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_10__ {int free_clst; int n_fatent; scalar_t__ fs_type; int bitbase; int* win; int fatbase; int fsi_flag; } ;
struct TYPE_9__ {TYPE_2__* fs; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FFOBJID ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 scalar_t__ FS_FAT12 ;
 scalar_t__ FS_FAT16 ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 size_t SS (TYPE_2__*) ;
 scalar_t__ find_volume (TYPE_2__*,int ) ;
 int get_fat (TYPE_1__*,int) ;
 int ld_dword (int*) ;
 scalar_t__ ld_word (int*) ;
 scalar_t__ move_window (TYPE_2__*,int ) ;

FRESULT f_getfree (
    FATFS *fs,
    DWORD* nclst
)
{
    FRESULT res;
    DWORD nfree, clst, sect, stat;
    UINT i;
    FFOBJID obj;



    res = find_volume(fs, 0);
    if (res == FR_OK) {

        if (fs->free_clst <= fs->n_fatent - 2) {
            *nclst = fs->free_clst;
        } else {

            nfree = 0;
            if (fs->fs_type == FS_FAT12) {
                clst = 2; obj.fs = fs;
                do {
                    stat = get_fat(&obj, clst);
                    if (stat == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
                    if (stat == 1) { res = FR_INT_ERR; break; }
                    if (stat == 0) nfree++;
                } while (++clst < fs->n_fatent);
            } else {
                {
                    clst = fs->n_fatent;
                    sect = fs->fatbase;
                    i = 0;
                    do {
                        if (i == 0) {
                            res = move_window(fs, sect++);
                            if (res != FR_OK) break;
                        }
                        if (fs->fs_type == FS_FAT16) {
                            if (ld_word(fs->win + i) == 0) nfree++;
                            i += 2;
                        } else {
                            if ((ld_dword(fs->win + i) & 0x0FFFFFFF) == 0) nfree++;
                            i += 4;
                        }
                        i %= SS(fs);
                    } while (--clst);
                }
            }
            *nclst = nfree;
            fs->free_clst = nfree;
            fs->fsi_flag |= 1;
        }
    }

    LEAVE_FF(fs, res);
}
