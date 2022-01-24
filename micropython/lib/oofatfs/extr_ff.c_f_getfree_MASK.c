#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_10__ {int free_clst; int n_fatent; scalar_t__ fs_type; int bitbase; int* win; int fatbase; int fsi_flag; } ;
struct TYPE_9__ {TYPE_2__* fs; } ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FFOBJID ;
typedef  TYPE_2__ FATFS ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 scalar_t__ FR_DISK_ERR ; 
 scalar_t__ FR_INT_ERR ; 
 scalar_t__ FR_OK ; 
 scalar_t__ FS_EXFAT ; 
 scalar_t__ FS_FAT12 ; 
 scalar_t__ FS_FAT16 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 size_t FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

FRESULT FUNC7 (
    FATFS *fs,
    DWORD* nclst        /* Pointer to a variable to return number of free clusters */
)
{
    FRESULT res;
    DWORD nfree, clst, sect, stat;
    UINT i;
    FFOBJID obj;


    /* Get logical drive */
    res = FUNC2(fs, 0);
    if (res == FR_OK) {
        /* If free_clst is valid, return it without full FAT scan */
        if (fs->free_clst <= fs->n_fatent - 2) {
            *nclst = fs->free_clst;
        } else {
            /* Scan FAT to obtain number of free clusters */
            nfree = 0;
            if (fs->fs_type == FS_FAT12) {  /* FAT12: Scan bit field FAT entries */
                clst = 2; obj.fs = fs;
                do {
                    stat = FUNC3(&obj, clst);
                    if (stat == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
                    if (stat == 1) { res = FR_INT_ERR; break; }
                    if (stat == 0) nfree++;
                } while (++clst < fs->n_fatent);
            } else {
#if FF_FS_EXFAT
                if (fs->fs_type == FS_EXFAT) {  /* exFAT: Scan allocation bitmap */
                    BYTE bm;
                    UINT b;

                    clst = fs->n_fatent - 2;    /* Number of clusters */
                    sect = fs->bitbase;         /* Bitmap sector */
                    i = 0;                      /* Offset in the sector */
                    do {    /* Counts numbuer of bits with zero in the bitmap */
                        if (i == 0) {
                            res = move_window(fs, sect++);
                            if (res != FR_OK) break;
                        }
                        for (b = 8, bm = fs->win[i]; b && clst; b--, clst--) {
                            if (!(bm & 1)) nfree++;
                            bm >>= 1;
                        }
                        i = (i + 1) % SS(fs);
                    } while (clst);
                } else
#endif
                {   /* FAT16/32: Scan WORD/DWORD FAT entries */
                    clst = fs->n_fatent;    /* Number of entries */
                    sect = fs->fatbase;     /* Top of the FAT */
                    i = 0;                  /* Offset in the sector */
                    do {    /* Counts numbuer of entries with zero in the FAT */
                        if (i == 0) {
                            res = FUNC6(fs, sect++);
                            if (res != FR_OK) break;
                        }
                        if (fs->fs_type == FS_FAT16) {
                            if (FUNC5(fs->win + i) == 0) nfree++;
                            i += 2;
                        } else {
                            if ((FUNC4(fs->win + i) & 0x0FFFFFFF) == 0) nfree++;
                            i += 4;
                        }
                        i %= FUNC1(fs);
                    } while (--clst);
                }
            }
            *nclst = nfree;         /* Return the free clusters */
            fs->free_clst = nfree;  /* Now free_clst is valid */
            fs->fsi_flag |= 1;      /* FAT32: FSInfo is to be updated */
        }
    }

    FUNC0(fs, res);
}