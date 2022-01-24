#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  float_union ;
struct TYPE_6__ {int tif_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  tdir_offset; } ;
typedef  TYPE_1__ TIFFDirEntry ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TIFF_SWAB ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(TIFF* tif, TIFFDirEntry* direntry, float* value)
{
         union
	 {
	   float  f;
	   uint32 i;
	 } float_union;
	FUNC1(sizeof(float)==4);
	FUNC1(sizeof(uint32)==4);
	FUNC1(sizeof(float_union)==4);
	float_union.i=*(uint32*)(&direntry->tdir_offset);
	*value=float_union.f;
	if (tif->tif_flags&TIFF_SWAB)
		FUNC0((uint32*)value);
}