#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8 ;
typedef  scalar_t__ uint64 ;
typedef  scalar_t__ uint32 ;
typedef  scalar_t__ uint16 ;
typedef  scalar_t__ int8 ;
typedef  scalar_t__ int64 ;
typedef  scalar_t__ int32 ;
typedef  scalar_t__ int16 ;
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_15__ {int tdir_count; int tdir_type; } ;
typedef  TYPE_1__ TIFFDirEntry ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 double FLT_MAX ; 
 double FLT_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,double*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,double*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,double*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int TIFFReadDirEntryErrCount ; 
 int TIFFReadDirEntryErrOk ; 
 int TIFFReadDirEntryErrRange ; 
 int TIFFReadDirEntryErrType ; 
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
 float FUNC12 (scalar_t__) ; 

__attribute__((used)) static enum TIFFReadDirEntryErr FUNC13(TIFF* tif, TIFFDirEntry* direntry, float* value)
{
	enum TIFFReadDirEntryErr err;
	if (direntry->tdir_count!=1)
		return(TIFFReadDirEntryErrCount);
	switch (direntry->tdir_type)
	{
		case TIFF_BYTE:
			{
				uint8 m;
				FUNC0(tif,direntry,&m);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SBYTE:
			{
				int8 m;
				FUNC6(tif,direntry,&m);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SHORT:
			{
				uint16 m;
				FUNC7(tif,direntry,&m);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SSHORT:
			{
				int16 m;
				FUNC11(tif,direntry,&m);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_LONG:
			{
				uint32 m;
				FUNC3(tif,direntry,&m);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SLONG:
			{
				int32 m;
				FUNC8(tif,direntry,&m);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_LONG8:
			{
				uint64 m;
				err=FUNC4(tif,direntry,&m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
#if defined(__WIN32__) && (_MSC_VER < 1500)
				/*
				 * XXX: MSVC 6.0 does not support conversion
				 * of 64-bit integers into floating point
				 * values.
				 */
				*value = _TIFFUInt64ToFloat(m);
#else
				*value=(float)m;
#endif
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SLONG8:
			{
				int64 m;
				err=FUNC9(tif,direntry,&m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_RATIONAL:
			{
				double m;
				err=FUNC5(tif,direntry,&m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SRATIONAL:
			{
				double m;
				err=FUNC10(tif,direntry,&m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_FLOAT:
			FUNC2(tif,direntry,value);
			return(TIFFReadDirEntryErrOk);
		case TIFF_DOUBLE:
			{
				double m;
				err=FUNC1(tif,direntry,&m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				if ((m > FLT_MAX) || (m < FLT_MIN))
					return(TIFFReadDirEntryErrRange);
				*value=(float)m;
				return(TIFFReadDirEntryErrOk);
			}
		default:
			return(TIFFReadDirEntryErrType);
	}
}