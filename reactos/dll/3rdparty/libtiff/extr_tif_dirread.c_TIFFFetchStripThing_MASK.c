#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  scalar_t__ uint32 ;
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_7__ {scalar_t__ tdir_count; int /*<<< orphan*/  tdir_tag; } ;
struct TYPE_6__ {char* field_name; } ;
typedef  TYPE_1__ TIFFField ;
typedef  TYPE_2__ TIFFDirEntry ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TIFFReadDirEntryErrCount ; 
 int TIFFReadDirEntryErrOk ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(TIFF* tif, TIFFDirEntry* dir, uint32 nstrips, uint64** lpp)
{
	static const char module[] = "TIFFFetchStripThing";
	enum TIFFReadDirEntryErr err;
	uint64* data;
	err=FUNC1(tif,dir,&data,nstrips);
	if (err!=TIFFReadDirEntryErrOk)
	{
		const TIFFField* fip = FUNC0(tif,dir->tdir_tag); 
		FUNC2(tif,err,module,fip ? fip->field_name : "unknown tagname",0);
		return(0);
	}
	if (dir->tdir_count<(uint64)nstrips)
	{
		uint64* resizeddata;
		const TIFFField* fip = FUNC0(tif,dir->tdir_tag);
		const char* pszMax = FUNC8("LIBTIFF_STRILE_ARRAY_MAX_RESIZE_COUNT");
		uint32 max_nstrips = 1000000;
		if( pszMax )
			max_nstrips = (uint32) FUNC7(pszMax);
		FUNC2(tif,TIFFReadDirEntryErrCount,
		            module,
		            fip ? fip->field_name : "unknown tagname",
		            ( nstrips <= max_nstrips ) );

		if( nstrips > max_nstrips )
		{
			FUNC4(data);
			return(0);
		}

		resizeddata=(uint64*)FUNC3(tif,nstrips,sizeof(uint64),"for strip array");
		if (resizeddata==0) {
			FUNC4(data);
			return(0);
		}
                FUNC5(resizeddata,data,(uint32)dir->tdir_count*sizeof(uint64));
                FUNC6(resizeddata+(uint32)dir->tdir_count,0,(nstrips-(uint32)dir->tdir_count)*sizeof(uint64));
		FUNC4(data);
		data=resizeddata;
	}
	*lpp=data;
	return(1);
}