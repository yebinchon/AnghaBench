#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_5__ {int tif_flags; } ;
typedef  int /*<<< orphan*/  TIFFDirEntry ;
typedef  TYPE_1__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,double**) ; 
 int /*<<< orphan*/  FUNC1 (double*,int) ; 
 int FUNC2 (TYPE_1__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,double*) ; 
 int /*<<< orphan*/  TIFF_DOUBLE ; 
 int TIFF_SWAB ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, double* value)
{
	FUNC3(count<0x20000000);
	FUNC3(sizeof(double)==8);
	FUNC0(tif,count,&value);
	if (tif->tif_flags&TIFF_SWAB)
		FUNC1(value,count);
	return(FUNC2(tif,ndir,dir,tag,TIFF_DOUBLE,count,count*8,value));
}