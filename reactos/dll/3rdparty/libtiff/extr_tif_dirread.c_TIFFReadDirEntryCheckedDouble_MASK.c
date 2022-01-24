#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_9__ {double d; int /*<<< orphan*/  l; } ;
typedef  TYPE_2__ UInt64Aligned_t ;
struct TYPE_11__ {int tif_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  toff_long8; int /*<<< orphan*/  toff_long; } ;
struct TYPE_10__ {TYPE_1__ tdir_offset; } ;
typedef  TYPE_3__ TIFFDirEntry ;
typedef  TYPE_4__ TIFF ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int,double*) ; 
 int TIFFReadDirEntryErrOk ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int TIFF_BIGTIFF ; 
 int TIFF_SWAB ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static enum TIFFReadDirEntryErr FUNC4(TIFF* tif, TIFFDirEntry* direntry, double* value)
{
	FUNC3(sizeof(double)==8);
	FUNC3(sizeof(uint64)==8);
	FUNC3(sizeof(UInt64Aligned_t)==8);
	if (!(tif->tif_flags&TIFF_BIGTIFF))
	{
		enum TIFFReadDirEntryErr err;
		uint32 offset = direntry->tdir_offset.toff_long;
		if (tif->tif_flags&TIFF_SWAB)
			FUNC1(&offset);
		err=FUNC0(tif,offset,8,value);
		if (err!=TIFFReadDirEntryErrOk)
			return(err);
	}
	else
	{
	       UInt64Aligned_t uint64_union;
	       uint64_union.l=direntry->tdir_offset.toff_long8;
	       *value=uint64_union.d;
	}
	if (tif->tif_flags&TIFF_SWAB)
		FUNC2((uint64*)value);
	return(TIFFReadDirEntryErrOk);
}