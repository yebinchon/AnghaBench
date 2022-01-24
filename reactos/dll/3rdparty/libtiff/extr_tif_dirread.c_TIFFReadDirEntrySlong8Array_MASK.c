#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint64 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  int8 ;
typedef  void* int64 ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  int16 ;
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_8__ {int tif_flags; } ;
struct TYPE_7__ {int tdir_type; } ;
typedef  TYPE_1__ TIFFDirEntry ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,TYPE_1__*,int*,int,void**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TIFFReadDirEntryErrAlloc ; 
 int TIFFReadDirEntryErrOk ; 
 int TIFFReadDirEntryErrType ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
#define  TIFF_BYTE 135 
#define  TIFF_LONG 134 
#define  TIFF_LONG8 133 
#define  TIFF_SBYTE 132 
#define  TIFF_SHORT 131 
#define  TIFF_SLONG 130 
#define  TIFF_SLONG8 129 
#define  TIFF_SSHORT 128 
 int TIFF_SWAB ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static enum TIFFReadDirEntryErr FUNC8(TIFF* tif, TIFFDirEntry* direntry, int64** value)
{
	enum TIFFReadDirEntryErr err;
	uint32 count;
	void* origdata;
	int64* data;
	switch (direntry->tdir_type)
	{
		case TIFF_BYTE:
		case TIFF_SBYTE:
		case TIFF_SHORT:
		case TIFF_SSHORT:
		case TIFF_LONG:
		case TIFF_SLONG:
		case TIFF_LONG8:
		case TIFF_SLONG8:
			break;
		default:
			return(TIFFReadDirEntryErrType);
	}
	err=FUNC0(tif,direntry,&count,8,&origdata);
	if ((err!=TIFFReadDirEntryErrOk)||(origdata==0))
	{
		*value=0;
		return(err);
	}
	switch (direntry->tdir_type)
	{
		case TIFF_LONG8:
			{
				uint64* m;
				uint32 n;
				m=(uint64*)origdata;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC4(m);
					err=FUNC1(*m);
					if (err!=TIFFReadDirEntryErrOk)
					{
						FUNC6(origdata);
						return(err);
					}
					m++;
				}
				*value=(int64*)origdata;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SLONG8:
			*value=(int64*)origdata;
			if (tif->tif_flags&TIFF_SWAB)
				FUNC2((uint64*)(*value),count);
			return(TIFFReadDirEntryErrOk);
	}
	data=(int64*)FUNC7(count*8);
	if (data==0)
	{
		FUNC6(origdata);
		return(TIFFReadDirEntryErrAlloc);
	}
	switch (direntry->tdir_type)
	{
		case TIFF_BYTE:
			{
				uint8* ma;
				int64* mb;
				uint32 n;
				ma=(uint8*)origdata;
				mb=data;
				for (n=0; n<count; n++)
					*mb++=(int64)(*ma++);
			}
			break;
		case TIFF_SBYTE:
			{
				int8* ma;
				int64* mb;
				uint32 n;
				ma=(int8*)origdata;
				mb=data;
				for (n=0; n<count; n++)
					*mb++=(int64)(*ma++);
			}
			break;
		case TIFF_SHORT:
			{
				uint16* ma;
				int64* mb;
				uint32 n;
				ma=(uint16*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC5(ma);
					*mb++=(int64)(*ma++);
				}
			}
			break;
		case TIFF_SSHORT:
			{
				int16* ma;
				int64* mb;
				uint32 n;
				ma=(int16*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC5((uint16*)ma);
					*mb++=(int64)(*ma++);
				}
			}
			break;
		case TIFF_LONG:
			{
				uint32* ma;
				int64* mb;
				uint32 n;
				ma=(uint32*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC3(ma);
					*mb++=(int64)(*ma++);
				}
			}
			break;
		case TIFF_SLONG:
			{
				int32* ma;
				int64* mb;
				uint32 n;
				ma=(int32*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC3((uint32*)ma);
					*mb++=(int64)(*ma++);
				}
			}
			break;
	}
	FUNC6(origdata);
	*value=data;
	return(TIFFReadDirEntryErrOk);
}