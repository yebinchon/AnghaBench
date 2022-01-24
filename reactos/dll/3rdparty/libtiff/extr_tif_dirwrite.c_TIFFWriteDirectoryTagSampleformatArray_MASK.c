#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  int8 ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_12__ {int td_sampleformat; int td_bitspersample; } ;
struct TYPE_13__ {TYPE_1__ tif_dir; int /*<<< orphan*/  tif_clientdata; } ;
typedef  int /*<<< orphan*/  TIFFDirEntry ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
#define  SAMPLEFORMAT_IEEEFP 130 
#define  SAMPLEFORMAT_INT 129 
#define  SAMPLEFORMAT_UINT 128 
 float FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC8 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,double*) ; 
 int FUNC10 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,float*) ; 
 int FUNC11 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC12 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 void* FUNC17 (int) ; 

__attribute__((used)) static int
FUNC18(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, double* value)
{
	static const char module[] = "TIFFWriteDirectoryTagSampleformatArray";
	void* conv;
	uint32 i;
	int ok;
	conv = FUNC17(count*sizeof(double));
	if (conv == NULL)
	{
		FUNC7(tif->tif_clientdata, module, "Out of memory");
		return (0);
	}

	switch (tif->tif_dir.td_sampleformat)
	{
		case SAMPLEFORMAT_IEEEFP:
			if (tif->tif_dir.td_bitspersample<=32)
			{
				for (i = 0; i < count; ++i)
					((float*)conv)[i] = FUNC0(value[i]);
				ok = FUNC10(tif,ndir,dir,tag,count,(float*)conv);
			}
			else
			{
				ok = FUNC9(tif,ndir,dir,tag,count,value);
			}
			break;
		case SAMPLEFORMAT_INT:
			if (tif->tif_dir.td_bitspersample<=8)
			{
				for (i = 0; i < count; ++i)
					((int8*)conv)[i] = FUNC3(value[i]);
				ok = FUNC12(tif,ndir,dir,tag,count,(int8*)conv);
			}
			else if (tif->tif_dir.td_bitspersample<=16)
			{
				for (i = 0; i < count; ++i)
					((int16*)conv)[i] = FUNC1(value[i]);
				ok = FUNC15(tif,ndir,dir,tag,count,(int16*)conv);
			}
			else
			{
				for (i = 0; i < count; ++i)
					((int32*)conv)[i] = FUNC2(value[i]);
				ok = FUNC14(tif,ndir,dir,tag,count,(int32*)conv);
			}
			break;
		case SAMPLEFORMAT_UINT:
			if (tif->tif_dir.td_bitspersample<=8)
			{
				for (i = 0; i < count; ++i)
					((uint8*)conv)[i] = FUNC6(value[i]);
				ok = FUNC8(tif,ndir,dir,tag,count,(uint8*)conv);
			}
			else if (tif->tif_dir.td_bitspersample<=16)
			{
				for (i = 0; i < count; ++i)
					((uint16*)conv)[i] = FUNC4(value[i]);
				ok = FUNC13(tif,ndir,dir,tag,count,(uint16*)conv);
			}
			else
			{
				for (i = 0; i < count; ++i)
					((uint32*)conv)[i] = FUNC5(value[i]);
				ok = FUNC11(tif,ndir,dir,tag,count,(uint32*)conv);
			}
			break;
		default:
			ok = 0;
	}

	FUNC16(conv);
	return (ok);
}