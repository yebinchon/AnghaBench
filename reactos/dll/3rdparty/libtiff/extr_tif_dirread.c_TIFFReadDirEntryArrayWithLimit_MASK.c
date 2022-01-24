#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int uint32 ;
typedef  scalar_t__ tmsize_t ;
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_12__ {int toff_long; scalar_t__ toff_long8; } ;
struct TYPE_11__ {int tif_flags; scalar_t__ tif_size; } ;
struct TYPE_10__ {scalar_t__ tdir_count; TYPE_4__ tdir_offset; int /*<<< orphan*/  tdir_type; } ;
typedef  TYPE_1__ TIFFDirEntry ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,scalar_t__,scalar_t__,void*) ; 
 int FUNC2 (TYPE_2__*,scalar_t__,scalar_t__,void**) ; 
 int TIFFReadDirEntryErrAlloc ; 
 int TIFFReadDirEntryErrIo ; 
 int TIFFReadDirEntryErrOk ; 
 int TIFFReadDirEntryErrSizesan ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int TIFF_BIGTIFF ; 
 int TIFF_SWAB ; 
 void* FUNC5 (TYPE_2__*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static enum TIFFReadDirEntryErr FUNC10(
    TIFF* tif, TIFFDirEntry* direntry, uint32* count, uint32 desttypesize,
    void** value, uint64 maxcount)
{
	int typesize;
	uint32 datasize;
	void* data;
        uint64 target_count64;
	typesize=FUNC0(direntry->tdir_type);

        target_count64 = (direntry->tdir_count > maxcount) ?
                maxcount : direntry->tdir_count;

	if ((target_count64==0)||(typesize==0))
	{
		*value=0;
		return(TIFFReadDirEntryErrOk);
	}
        (void) desttypesize;

        /* 
         * As a sanity check, make sure we have no more than a 2GB tag array 
         * in either the current data type or the dest data type.  This also
         * avoids problems with overflow of tmsize_t on 32bit systems.
         */
	if ((uint64)(2147483647/typesize)<target_count64)
		return(TIFFReadDirEntryErrSizesan);
	if ((uint64)(2147483647/desttypesize)<target_count64)
		return(TIFFReadDirEntryErrSizesan);

	*count=(uint32)target_count64;
	datasize=(*count)*typesize;
	FUNC8((tmsize_t)datasize>0);

	if( FUNC9(tif) && datasize > (uint32)tif->tif_size )
		return TIFFReadDirEntryErrIo;

	if( !FUNC9(tif) &&
		(((tif->tif_flags&TIFF_BIGTIFF) && datasize > 8) ||
		(!(tif->tif_flags&TIFF_BIGTIFF) && datasize > 4)) )
	{
		data = NULL;
	}
	else
	{
		data=FUNC5(tif, *count, typesize, "ReadDirEntryArray");
		if (data==0)
			return(TIFFReadDirEntryErrAlloc);
	}
	if (!(tif->tif_flags&TIFF_BIGTIFF))
	{
		if (datasize<=4)
			FUNC7(data,&direntry->tdir_offset,datasize);
		else
		{
			enum TIFFReadDirEntryErr err;
			uint32 offset = direntry->tdir_offset.toff_long;
			if (tif->tif_flags&TIFF_SWAB)
				FUNC3(&offset);
			if( FUNC9(tif) )
				err=FUNC1(tif,(uint64)offset,(tmsize_t)datasize,data);
			else
				err=FUNC2(tif,(uint64)offset,(tmsize_t)datasize,&data);
			if (err!=TIFFReadDirEntryErrOk)
			{
				FUNC6(data);
				return(err);
			}
		}
	}
	else
	{
		if (datasize<=8)
			FUNC7(data,&direntry->tdir_offset,datasize);
		else
		{
			enum TIFFReadDirEntryErr err;
			uint64 offset = direntry->tdir_offset.toff_long8;
			if (tif->tif_flags&TIFF_SWAB)
				FUNC4(&offset);
			if( FUNC9(tif) )
				err=FUNC1(tif,(uint64)offset,(tmsize_t)datasize,data);
			else
				err=FUNC2(tif,(uint64)offset,(tmsize_t)datasize,&data);
			if (err!=TIFFReadDirEntryErrOk)
			{
				FUNC6(data);
				return(err);
			}
		}
	}
	*value=data;
	return(TIFFReadDirEntryErrOk);
}