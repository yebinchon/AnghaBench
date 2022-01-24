#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_6__ {int /*<<< orphan*/  tif_clientdata; } ;
struct TYPE_5__ {long bitspersample; void** Map; scalar_t__ photometric; TYPE_4__* tif; } ;
typedef  void* TIFFRGBValue ;
typedef  TYPE_1__ TIFFRGBAImage ;

/* Variables and functions */
 scalar_t__ PHOTOMETRIC_MINISBLACK ; 
 scalar_t__ PHOTOMETRIC_MINISWHITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(TIFFRGBAImage* img)
{
    int32 x, range;

    range = (int32)((1L<<img->bitspersample)-1);
    
    /* treat 16 bit the same as eight bit */
    if( img->bitspersample == 16 )
        range = (int32) 255;

    img->Map = (TIFFRGBValue*) FUNC3((range+1) * sizeof (TIFFRGBValue));
    if (img->Map == NULL) {
		FUNC0(img->tif->tif_clientdata, FUNC1(img->tif),
			"No space for photometric conversion table");
		return (0);
    }
    if (img->photometric == PHOTOMETRIC_MINISWHITE) {
	for (x = 0; x <= range; x++)
	    img->Map[x] = (TIFFRGBValue) (((range - x) * 255) / range);
    } else {
	for (x = 0; x <= range; x++)
	    img->Map[x] = (TIFFRGBValue) ((x * 255) / range);
    }
    if (img->bitspersample <= 16 &&
	(img->photometric == PHOTOMETRIC_MINISBLACK ||
	 img->photometric == PHOTOMETRIC_MINISWHITE)) {
	/*
	 * Use photometric mapping table to construct
	 * unpacking tables for samples <= 8 bits.
	 */
	if (!FUNC4(img))
	    return (0);
	/* no longer need Map, free it */
	FUNC2(img->Map);
	img->Map = NULL;
    }
    return (1);
}