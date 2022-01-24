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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint64 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  int8 ;
typedef  int /*<<< orphan*/  int64 ;
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  int16 ;
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_10__ {int tif_flags; } ;
struct TYPE_9__ {int tdir_type; } ;
typedef  TYPE_1__ TIFFDirEntry ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,double*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,float*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,int*,int,void**) ; 
 int TIFFReadDirEntryErrAlloc ; 
 int TIFFReadDirEntryErrOk ; 
 int TIFFReadDirEntryErrType ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
#define  TIFF_BYTE 139 
#define  TIFF_DOUBLE 138 
#define  TIFF_FLOAT 137 
#define  TIFF_LONG 136 
#define  TIFF_LONG8 135 
#define  TIFF_RATIONAL 134 
#define  TIFF_SBYTE 133 
#define  TIFF_SHORT 132 
#define  TIFF_SLONG 131 
#define  TIFF_SLONG8 130 
#define  TIFF_SRATIONAL 129 
#define  TIFF_SSHORT 128 
 int TIFF_SWAB ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static enum TIFFReadDirEntryErr
FUNC11(TIFF* tif, TIFFDirEntry* direntry, double** value)
{
	enum TIFFReadDirEntryErr err;
	uint32 count;
	void* origdata;
	double* data;
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
		case TIFF_RATIONAL:
		case TIFF_SRATIONAL:
		case TIFF_FLOAT:
		case TIFF_DOUBLE:
			break;
		default:
			return(TIFFReadDirEntryErrType);
	}
	err=FUNC2(tif,direntry,&count,8,&origdata);
	if ((err!=TIFFReadDirEntryErrOk)||(origdata==0))
	{
		*value=0;
		return(err);
	}
	switch (direntry->tdir_type)
	{
		case TIFF_DOUBLE:
			if (tif->tif_flags&TIFF_SWAB)
				FUNC4((uint64*)origdata,count);
			FUNC0(tif,count,(double*)origdata);
			*value=(double*)origdata;
			return(TIFFReadDirEntryErrOk);
	}
	data=(double*)FUNC10(count*sizeof(double));
	if (data==0)
	{
		FUNC9(origdata);
		return(TIFFReadDirEntryErrAlloc);
	}
	switch (direntry->tdir_type)
	{
		case TIFF_BYTE:
			{
				uint8* ma;
				double* mb;
				uint32 n;
				ma=(uint8*)origdata;
				mb=data;
				for (n=0; n<count; n++)
					*mb++=(double)(*ma++);
			}
			break;
		case TIFF_SBYTE:
			{
				int8* ma;
				double* mb;
				uint32 n;
				ma=(int8*)origdata;
				mb=data;
				for (n=0; n<count; n++)
					*mb++=(double)(*ma++);
			}
			break;
		case TIFF_SHORT:
			{
				uint16* ma;
				double* mb;
				uint32 n;
				ma=(uint16*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC7(ma);
					*mb++=(double)(*ma++);
				}
			}
			break;
		case TIFF_SSHORT:
			{
				int16* ma;
				double* mb;
				uint32 n;
				ma=(int16*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC7((uint16*)ma);
					*mb++=(double)(*ma++);
				}
			}
			break;
		case TIFF_LONG:
			{
				uint32* ma;
				double* mb;
				uint32 n;
				ma=(uint32*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC5(ma);
					*mb++=(double)(*ma++);
				}
			}
			break;
		case TIFF_SLONG:
			{
				int32* ma;
				double* mb;
				uint32 n;
				ma=(int32*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC5((uint32*)ma);
					*mb++=(double)(*ma++);
				}
			}
			break;
		case TIFF_LONG8:
			{
				uint64* ma;
				double* mb;
				uint32 n;
				ma=(uint64*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC6(ma);
#if defined(__WIN32__) && (_MSC_VER < 1500)
					/*
					 * XXX: MSVC 6.0 does not support
					 * conversion of 64-bit integers into
					 * floating point values.
					 */
					*mb++ = _TIFFUInt64ToDouble(*ma++);
#else
					*mb++ = (double)(*ma++);
#endif
				}
			}
			break;
		case TIFF_SLONG8:
			{
				int64* ma;
				double* mb;
				uint32 n;
				ma=(int64*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC6((uint64*)ma);
					*mb++=(double)(*ma++);
				}
			}
			break;
		case TIFF_RATIONAL:
			{
				uint32* ma;
				uint32 maa;
				uint32 mab;
				double* mb;
				uint32 n;
				ma=(uint32*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC5(ma);
					maa=*ma++;
					if (tif->tif_flags&TIFF_SWAB)
						FUNC5(ma);
					mab=*ma++;
					if (mab==0)
						*mb++=0.0;
					else
						*mb++=(double)maa/(double)mab;
				}
			}
			break;
		case TIFF_SRATIONAL:
			{
				uint32* ma;
				int32 maa;
				uint32 mab;
				double* mb;
				uint32 n;
				ma=(uint32*)origdata;
				mb=data;
				for (n=0; n<count; n++)
				{
					if (tif->tif_flags&TIFF_SWAB)
						FUNC5(ma);
					maa=*(int32*)ma;
					ma++;
					if (tif->tif_flags&TIFF_SWAB)
						FUNC5(ma);
					mab=*ma++;
					if (mab==0)
						*mb++=0.0;
					else
						*mb++=(double)maa/(double)mab;
				}
			}
			break;
		case TIFF_FLOAT:
			{
				float* ma;
				double* mb;
				uint32 n;
				if (tif->tif_flags&TIFF_SWAB)
					FUNC3((uint32*)origdata,count);  
				FUNC1(tif,count,(float*)origdata);
				ma=(float*)origdata;
				mb=data;
				for (n=0; n<count; n++)
					*mb++=(double)(*ma++);
			}
			break;
	}
	FUNC9(origdata);
	*value=data;
	return(TIFFReadDirEntryErrOk);
}