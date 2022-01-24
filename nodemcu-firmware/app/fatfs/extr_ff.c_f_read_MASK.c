#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_15__ {scalar_t__ objsize; int sclust; } ;
struct TYPE_14__ {int csize; int winsect; int* win; int /*<<< orphan*/  pdrv; scalar_t__ wflag; } ;
struct TYPE_13__ {int flag; scalar_t__ fptr; int clust; int sect; int* buf; TYPE_3__ obj; scalar_t__ cltbl; scalar_t__ err; } ;
typedef  scalar_t__ FSIZE_t ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FIL ;
typedef  TYPE_2__ FATFS ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FA_DIRTY ; 
 int FA_READ ; 
 scalar_t__ FR_DENIED ; 
 int /*<<< orphan*/  FR_DISK_ERR ; 
 int /*<<< orphan*/  FR_INT_ERR ; 
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ RES_OK ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*,int,int) ; 
 int FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int) ; 
 scalar_t__ FUNC10 (TYPE_3__*,TYPE_2__**) ; 

FRESULT FUNC11 (
	FIL* fp, 	/* Pointer to the file object */
	void* buff,	/* Pointer to data buffer */
	UINT btr,	/* Number of bytes to read */
	UINT* br	/* Pointer to number of bytes read */
)
{
	FRESULT res;
	FATFS *fs;
	DWORD clst, sect;
	FSIZE_t remain;
	UINT rcnt, cc, csect;
	BYTE *rbuff = (BYTE*)buff;


	*br = 0;	/* Clear read byte counter */
	res = FUNC10(&fp->obj, &fs);				/* Check validity of the file object */
	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) FUNC1(fs, res);	/* Check validity */
	if (!(fp->flag & FA_READ)) FUNC1(fs, FR_DENIED); /* Check access mode */
	remain = fp->obj.objsize - fp->fptr;
	if (btr > remain) btr = (UINT)remain;		/* Truncate btr by remaining bytes */

	for ( ;  btr;								/* Repeat until btr bytes read */
		btr -= rcnt, *br += rcnt, rbuff += rcnt, fp->fptr += rcnt) {
		if (fp->fptr % FUNC2(fs) == 0) {			/* On the sector boundary? */
			csect = (UINT)(fp->fptr / FUNC2(fs) & (fs->csize - 1));	/* Sector offset in the cluster */
			if (csect == 0) {					/* On the cluster boundary? */
				if (fp->fptr == 0) {			/* On the top of the file? */
					clst = fp->obj.sclust;		/* Follow cluster chain from the origin */
				} else {						/* Middle or end of the file */
#if FF_USE_FASTSEEK
					if (fp->cltbl) {
						clst = clmt_clust(fp, fp->fptr);	/* Get cluster# from the CLMT */
					} else
#endif
					{
						clst = FUNC7(&fp->obj, fp->clust);	/* Follow cluster chain on the FAT */
					}
				}
				if (clst < 2) FUNC0(fs, FR_INT_ERR);
				if (clst == 0xFFFFFFFF) FUNC0(fs, FR_DISK_ERR);
				fp->clust = clst;				/* Update current cluster */
			}
			sect = FUNC4(fs, fp->clust);	/* Get current sector */
			if (sect == 0) FUNC0(fs, FR_INT_ERR);
			sect += csect;
			cc = btr / FUNC2(fs);					/* When remaining bytes >= sector size, */
			if (cc > 0) {						/* Read maximum contiguous sectors directly */
				if (csect + cc > fs->csize) {	/* Clip at cluster boundary */
					cc = fs->csize - csect;
				}
				if (FUNC5(fs->pdrv, rbuff, sect, cc) != RES_OK) FUNC0(fs, FR_DISK_ERR);
#if !FF_FS_READONLY && FF_FS_MINIMIZE <= 2		/* Replace one of the read sectors with cached data if it contains a dirty sector */
#if FF_FS_TINY
				if (fs->wflag && fs->winsect - sect < cc) {
					mem_cpy(rbuff + ((fs->winsect - sect) * SS(fs)), fs->win, SS(fs));
				}
#else
				if ((fp->flag & FA_DIRTY) && fp->sect - sect < cc) {
					FUNC8(rbuff + ((fp->sect - sect) * FUNC2(fs)), fp->buf, FUNC2(fs));
				}
#endif
#endif
				rcnt = FUNC2(fs) * cc;				/* Number of bytes transferred */
				continue;
			}
#if !FF_FS_TINY
			if (fp->sect != sect) {			/* Load data sector if not in cache */
#if !FF_FS_READONLY
				if (fp->flag & FA_DIRTY) {		/* Write-back dirty sector cache */
					if (FUNC6(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) FUNC0(fs, FR_DISK_ERR);
					fp->flag &= (BYTE)~FA_DIRTY;
				}
#endif
				if (FUNC5(fs->pdrv, fp->buf, sect, 1) != RES_OK)	FUNC0(fs, FR_DISK_ERR);	/* Fill sector cache */
			}
#endif
			fp->sect = sect;
		}
		rcnt = FUNC2(fs) - (UINT)fp->fptr % FUNC2(fs);	/* Number of bytes left in the sector */
		if (rcnt > btr) rcnt = btr;					/* Clip it by btr if needed */
#if FF_FS_TINY
		if (move_window(fs, fp->sect) != FR_OK) ABORT(fs, FR_DISK_ERR);	/* Move sector window */
		mem_cpy(rbuff, fs->win + fp->fptr % SS(fs), rcnt);	/* Extract partial sector */
#else
		FUNC8(rbuff, fp->buf + fp->fptr % FUNC2(fs), rcnt);	/* Extract partial sector */
#endif
	}

	FUNC1(fs, FR_OK);
}