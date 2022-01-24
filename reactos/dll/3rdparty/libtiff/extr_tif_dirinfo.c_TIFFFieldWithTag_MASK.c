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
typedef  scalar_t__ uint32 ;
struct TYPE_4__ {int /*<<< orphan*/  tif_clientdata; } ;
typedef  int /*<<< orphan*/  TIFFField ;
typedef  TYPE_1__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIFF_ANY ; 

const TIFFField*
FUNC2(TIFF* tif, uint32 tag)
{
	const TIFFField* fip = FUNC1(tif, tag, TIFF_ANY);
	if (!fip) {
		FUNC0(tif->tif_clientdata, "TIFFFieldWithTag",
			     "Internal error, unknown tag 0x%x",
			     (unsigned int) tag);
	}
	return (fip);
}