#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * bluecmap; int /*<<< orphan*/ * greencmap; int /*<<< orphan*/ * redcmap; int /*<<< orphan*/ * Bitdepth16To8; int /*<<< orphan*/ * UaToAa; int /*<<< orphan*/ * cielab; int /*<<< orphan*/ * ycbcr; int /*<<< orphan*/ * PALmap; int /*<<< orphan*/ * BWmap; int /*<<< orphan*/ * Map; } ;
typedef  TYPE_1__ TIFFRGBAImage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(TIFFRGBAImage* img)
{
	if (img->Map) {
		FUNC0(img->Map);
		img->Map = NULL;
	}
	if (img->BWmap) {
		FUNC0(img->BWmap);
		img->BWmap = NULL;
	}
	if (img->PALmap) {
		FUNC0(img->PALmap);
		img->PALmap = NULL;
	}
	if (img->ycbcr) {
		FUNC0(img->ycbcr);
		img->ycbcr = NULL;
	}
	if (img->cielab) {
		FUNC0(img->cielab);
		img->cielab = NULL;
	}
	if (img->UaToAa) {
		FUNC0(img->UaToAa);
		img->UaToAa = NULL;
	}
	if (img->Bitdepth16To8) {
		FUNC0(img->Bitdepth16To8);
		img->Bitdepth16To8 = NULL;
	}

	if( img->redcmap ) {
		FUNC0( img->redcmap );
		FUNC0( img->greencmap );
		FUNC0( img->bluecmap );
                img->redcmap = img->greencmap = img->bluecmap = NULL;
	}
}