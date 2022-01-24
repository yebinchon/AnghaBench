#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  int8 ;
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  int16 ;
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_11__ {int tdir_count; int tdir_type; } ;
typedef  TYPE_1__ TIFFDirEntry ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int TIFFReadDirEntryErrCount ; 
 int TIFFReadDirEntryErrOk ; 
 int TIFFReadDirEntryErrType ; 
#define  TIFF_BYTE 135 
#define  TIFF_LONG 134 
#define  TIFF_LONG8 133 
#define  TIFF_SBYTE 132 
#define  TIFF_SHORT 131 
#define  TIFF_SLONG 130 
#define  TIFF_SLONG8 129 
#define  TIFF_SSHORT 128 

__attribute__((used)) static enum TIFFReadDirEntryErr FUNC14(TIFF* tif, TIFFDirEntry* direntry, uint16* value)
{
	enum TIFFReadDirEntryErr err;
	if (direntry->tdir_count!=1)
		return(TIFFReadDirEntryErrCount);
	switch (direntry->tdir_type)
	{
		case TIFF_BYTE:
			{
				uint8 m;
				FUNC6(tif,direntry,&m);
				*value=(uint16)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SBYTE:
			{
				int8 m;
				FUNC9(tif,direntry,&m);
				err=FUNC2(m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				*value=(uint16)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SHORT:
			FUNC10(tif,direntry,value);
			return(TIFFReadDirEntryErrOk);
		case TIFF_SSHORT:
			{
				int16 m;
				FUNC13(tif,direntry,&m);
				err=FUNC5(m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				*value=(uint16)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_LONG:
			{
				uint32 m;
				FUNC7(tif,direntry,&m);
				err=FUNC0(m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				*value=(uint16)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SLONG:
			{
				int32 m;
				FUNC11(tif,direntry,&m);
				err=FUNC3(m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				*value=(uint16)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_LONG8:
			{
				uint64 m;
				err=FUNC8(tif,direntry,&m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				err=FUNC1(m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				*value=(uint16)m;
				return(TIFFReadDirEntryErrOk);
			}
		case TIFF_SLONG8:
			{
				int64 m;
				err=FUNC12(tif,direntry,&m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				err=FUNC4(m);
				if (err!=TIFFReadDirEntryErrOk)
					return(err);
				*value=(uint16)m;
				return(TIFFReadDirEntryErrOk);
			}
		default:
			return(TIFFReadDirEntryErrType);
	}
}