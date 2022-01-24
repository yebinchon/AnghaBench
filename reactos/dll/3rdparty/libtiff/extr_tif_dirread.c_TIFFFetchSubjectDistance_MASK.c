#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_11__ {int* i; scalar_t__ l; } ;
typedef  TYPE_2__ UInt64Aligned_t ;
struct TYPE_13__ {int tif_flags; } ;
struct TYPE_10__ {scalar_t__ toff_long8; } ;
struct TYPE_12__ {int tdir_count; scalar_t__ tdir_type; int /*<<< orphan*/  tdir_tag; TYPE_1__ tdir_offset; } ;
typedef  TYPE_3__ TIFFDirEntry ;
typedef  TYPE_4__ TIFF ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int,int*) ; 
 int TIFFReadDirEntryErrCount ; 
 int TIFFReadDirEntryErrOk ; 
 int TIFFReadDirEntryErrType ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int TIFF_BIGTIFF ; 
 scalar_t__ TIFF_RATIONAL ; 
 int TIFF_SWAB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(TIFF* tif, TIFFDirEntry* dir)
{
	static const char module[] = "TIFFFetchSubjectDistance";
	enum TIFFReadDirEntryErr err;
	UInt64Aligned_t m;
    m.l=0;
	FUNC5(sizeof(double)==8);
	FUNC5(sizeof(uint64)==8);
	FUNC5(sizeof(uint32)==4);
	if (dir->tdir_count!=1)
		err=TIFFReadDirEntryErrCount;
	else if (dir->tdir_type!=TIFF_RATIONAL)
		err=TIFFReadDirEntryErrType;
	else
	{
		if (!(tif->tif_flags&TIFF_BIGTIFF))
		{
			uint32 offset;
			offset=*(uint32*)(&dir->tdir_offset);
			if (tif->tif_flags&TIFF_SWAB)
				FUNC4(&offset);
			err=FUNC0(tif,offset,8,m.i);
		}
		else
		{
			m.l=dir->tdir_offset.toff_long8;
			err=TIFFReadDirEntryErrOk;
		}
	}
	if (err==TIFFReadDirEntryErrOk)
	{
		double n;
		if (tif->tif_flags&TIFF_SWAB)
			FUNC3(m.i,2);
		if (m.i[0]==0)
			n=0.0;
		else if (m.i[0]==0xFFFFFFFF)
			/*
			 * XXX: Numerator 0xFFFFFFFF means that we have infinite
			 * distance. Indicate that with a negative floating point
			 * SubjectDistance value.
			 */
			n=-1.0;
		else
			n=(double)m.i[0]/(double)m.i[1];
		return(FUNC2(tif,dir->tdir_tag,n));
	}
	else
	{
		FUNC1(tif,err,module,"SubjectDistance",TRUE);
		return(0);
	}
}