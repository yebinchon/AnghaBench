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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int tmsize_t ;
struct TYPE_5__ {int tif_flags; int tif_tilesize; int tif_rawdatasize; int /*<<< orphan*/ * tif_rawdata; int /*<<< orphan*/ * tif_rawcp; scalar_t__ tif_rawcc; int /*<<< orphan*/  tif_clientdata; } ;
typedef  TYPE_1__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int TIFF_BUFFERSETUP ; 
 int TIFF_MYBUFFER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

int
FUNC5(TIFF* tif, void* bp, tmsize_t size)
{
	static const char module[] = "TIFFWriteBufferSetup";

	if (tif->tif_rawdata) {
		if (tif->tif_flags & TIFF_MYBUFFER) {
			FUNC2(tif->tif_rawdata);
			tif->tif_flags &= ~TIFF_MYBUFFER;
		}
		tif->tif_rawdata = NULL;
	}
	if (size == (tmsize_t)(-1)) {
		size = (FUNC4(tif) ?
		    tif->tif_tilesize : FUNC1(tif));
		/*
		 * Make raw data buffer at least 8K
		 */
		if (size < 8*1024)
			size = 8*1024;
		bp = NULL;			/* NB: force malloc */
	}
	if (bp == NULL) {
		bp = FUNC3(size);
		if (bp == NULL) {
			FUNC0(tif->tif_clientdata, module, "No space for output buffer");
			return (0);
		}
		tif->tif_flags |= TIFF_MYBUFFER;
	} else
		tif->tif_flags &= ~TIFF_MYBUFFER;
	tif->tif_rawdata = (uint8*) bp;
	tif->tif_rawdatasize = size;
	tif->tif_rawcc = 0;
	tif->tif_rawcp = tif->tif_rawdata;
	tif->tif_flags |= TIFF_BUFFERSETUP;
	return (1);
}