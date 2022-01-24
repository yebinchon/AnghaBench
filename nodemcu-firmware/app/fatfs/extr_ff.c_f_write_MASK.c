#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_16__ {int objsize; scalar_t__ sclust; } ;
struct TYPE_15__ {scalar_t__ fs_type; int csize; scalar_t__ winsect; int const* win; int wflag; int /*<<< orphan*/  pdrv; } ;
struct TYPE_14__ {int flag; int fptr; scalar_t__ sect; int const* buf; TYPE_3__ obj; scalar_t__ clust; scalar_t__ cltbl; scalar_t__ err; } ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FIL ;
typedef  TYPE_2__ FATFS ;
typedef  scalar_t__ DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FA_DIRTY ; 
 int FA_MODIFIED ; 
 int FA_WRITE ; 
 int /*<<< orphan*/  FF_FS_EXFAT ; 
 scalar_t__ FR_DENIED ; 
 int /*<<< orphan*/  FR_DISK_ERR ; 
 int /*<<< orphan*/  FR_INT_ERR ; 
 scalar_t__ FR_OK ; 
 scalar_t__ FS_EXFAT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ RES_OK ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int const*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int const*,int const*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*,TYPE_2__**) ; 

FRESULT FUNC12 (
	FIL* fp,			/* Pointer to the file object */
	const void* buff,	/* Pointer to the data to be written */
	UINT btw,			/* Number of bytes to write */
	UINT* bw			/* Pointer to number of bytes written */
)
{
	FRESULT res;
	FATFS *fs;
	DWORD clst, sect;
	UINT wcnt, cc, csect;
	const BYTE *wbuff = (const BYTE*)buff;


	*bw = 0;	/* Clear write byte counter */
	res = FUNC11(&fp->obj, &fs);			/* Check validity of the file object */
	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) FUNC1(fs, res);	/* Check validity */
	if (!(fp->flag & FA_WRITE)) FUNC1(fs, FR_DENIED);	/* Check access mode */

	/* Check fptr wrap-around (file size cannot reach 4 GiB at FAT volume) */
	if ((!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) && (DWORD)(fp->fptr + btw) < (DWORD)fp->fptr) {
		btw = (UINT)(0xFFFFFFFF - (DWORD)fp->fptr);
	}

	for ( ;  btw;							/* Repeat until all data written */
		btw -= wcnt, *bw += wcnt, wbuff += wcnt, fp->fptr += wcnt, fp->obj.objsize = (fp->fptr > fp->obj.objsize) ? fp->fptr : fp->obj.objsize) {
		if (fp->fptr % FUNC2(fs) == 0) {		/* On the sector boundary? */
			csect = (UINT)(fp->fptr / FUNC2(fs)) & (fs->csize - 1);	/* Sector offset in the cluster */
			if (csect == 0) {				/* On the cluster boundary? */
				if (fp->fptr == 0) {		/* On the top of the file? */
					clst = fp->obj.sclust;	/* Follow from the origin */
					if (clst == 0) {		/* If no cluster is allocated, */
						clst = FUNC5(&fp->obj, 0);	/* create a new cluster chain */
					}
				} else {					/* On the middle or end of the file */
#if FF_USE_FASTSEEK
					if (fp->cltbl) {
						clst = clmt_clust(fp, fp->fptr);	/* Get cluster# from the CLMT */
					} else
#endif
					{
						clst = FUNC5(&fp->obj, fp->clust);	/* Follow or stretch cluster chain on the FAT */
					}
				}
				if (clst == 0) break;		/* Could not allocate a new cluster (disk full) */
				if (clst == 1) FUNC0(fs, FR_INT_ERR);
				if (clst == 0xFFFFFFFF) FUNC0(fs, FR_DISK_ERR);
				fp->clust = clst;			/* Update current cluster */
				if (fp->obj.sclust == 0) fp->obj.sclust = clst;	/* Set start cluster if the first write */
			}
#if FF_FS_TINY
			if (fs->winsect == fp->sect && sync_window(fs) != FR_OK) ABORT(fs, FR_DISK_ERR);	/* Write-back sector cache */
#else
			if (fp->flag & FA_DIRTY) {		/* Write-back sector cache */
				if (FUNC7(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) FUNC0(fs, FR_DISK_ERR);
				fp->flag &= (BYTE)~FA_DIRTY;
			}
#endif
			sect = FUNC4(fs, fp->clust);	/* Get current sector */
			if (sect == 0) FUNC0(fs, FR_INT_ERR);
			sect += csect;
			cc = btw / FUNC2(fs);				/* When remaining bytes >= sector size, */
			if (cc > 0) {					/* Write maximum contiguous sectors directly */
				if (csect + cc > fs->csize) {	/* Clip at cluster boundary */
					cc = fs->csize - csect;
				}
				if (FUNC7(fs->pdrv, wbuff, sect, cc) != RES_OK) FUNC0(fs, FR_DISK_ERR);
#if FF_FS_MINIMIZE <= 2
#if FF_FS_TINY
				if (fs->winsect - sect < cc) {	/* Refill sector cache if it gets invalidated by the direct write */
					mem_cpy(fs->win, wbuff + ((fs->winsect - sect) * SS(fs)), SS(fs));
					fs->wflag = 0;
				}
#else
				if (fp->sect - sect < cc) { /* Refill sector cache if it gets invalidated by the direct write */
					FUNC8(fp->buf, wbuff + ((fp->sect - sect) * FUNC2(fs)), FUNC2(fs));
					fp->flag &= (BYTE)~FA_DIRTY;
				}
#endif
#endif
				wcnt = FUNC2(fs) * cc;		/* Number of bytes transferred */
				continue;
			}
#if FF_FS_TINY
			if (fp->fptr >= fp->obj.objsize) {	/* Avoid silly cache filling on the growing edge */
				if (sync_window(fs) != FR_OK) ABORT(fs, FR_DISK_ERR);
				fs->winsect = sect;
			}
#else
			if (fp->sect != sect && 		/* Fill sector cache with file data */
				fp->fptr < fp->obj.objsize &&
				FUNC6(fs->pdrv, fp->buf, sect, 1) != RES_OK) {
					FUNC0(fs, FR_DISK_ERR);
			}
#endif
			fp->sect = sect;
		}
		wcnt = FUNC2(fs) - (UINT)fp->fptr % FUNC2(fs);	/* Number of bytes left in the sector */
		if (wcnt > btw) wcnt = btw;					/* Clip it by btw if needed */
#if FF_FS_TINY
		if (move_window(fs, fp->sect) != FR_OK) ABORT(fs, FR_DISK_ERR);	/* Move sector window */
		mem_cpy(fs->win + fp->fptr % SS(fs), wbuff, wcnt);	/* Fit data to the sector */
		fs->wflag = 1;
#else
		FUNC8(fp->buf + fp->fptr % FUNC2(fs), wbuff, wcnt);	/* Fit data to the sector */
		fp->flag |= FA_DIRTY;
#endif
	}

	fp->flag |= FA_MODIFIED;				/* Set file change flag */

	FUNC1(fs, FR_OK);
}