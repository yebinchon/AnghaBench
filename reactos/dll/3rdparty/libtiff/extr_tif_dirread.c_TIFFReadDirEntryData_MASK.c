#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  scalar_t__ tmsize_t ;
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_6__ {scalar_t__ tif_base; scalar_t__ tif_size; } ;
typedef  TYPE_1__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int TIFFReadDirEntryErrIo ; 
 int TIFFReadDirEntryErrOk ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static enum TIFFReadDirEntryErr
FUNC5(TIFF* tif, uint64 offset, tmsize_t size, void* dest)
{
	FUNC3(size>0);
	if (!FUNC4(tif)) {
		if (!FUNC1(tif,offset))
			return(TIFFReadDirEntryErrIo);
		if (!FUNC0(tif,dest,size))
			return(TIFFReadDirEntryErrIo);
	} else {
		size_t ma,mb;
		ma=(size_t)offset;
		mb=ma+size;
		if (((uint64)ma!=offset)
		    || (mb < ma)
		    || (mb - ma != (size_t) size)
		    || (mb < (size_t)size)
		    || (mb > (size_t)tif->tif_size)
		    )
			return(TIFFReadDirEntryErrIo);
		FUNC2(dest,tif->tif_base+ma,size);
	}
	return(TIFFReadDirEntryErrOk);
}