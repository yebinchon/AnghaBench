#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_4__ {int tif_flags; int /*<<< orphan*/  tif_clientdata; } ;
typedef  int /*<<< orphan*/  TIFFDirEntry ;
typedef  TYPE_1__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_1__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int TIFF_BIGTIFF ; 
 int /*<<< orphan*/  TIFF_SLONG8 ; 
 int TIFF_SWAB ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, int64* value)
{
	FUNC3(count<0x20000000);
	FUNC3(sizeof(int64)==8);
	if( !(tif->tif_flags&TIFF_BIGTIFF) ) {
		FUNC0(tif->tif_clientdata,"TIFFWriteDirectoryTagCheckedSlong8Array","SLONG8 not allowed for ClassicTIFF");
		return(0);
	}
	if (tif->tif_flags&TIFF_SWAB)
		FUNC1((uint64*)value,count);
	return(FUNC2(tif,ndir,dir,tag,TIFF_SLONG8,count,count*8,value));
}