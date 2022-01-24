#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_9__ {int /*<<< orphan*/  tif_flags; } ;
struct TYPE_8__ {int (* vsetparent ) (TYPE_2__*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  predictor; } ;
typedef  TYPE_1__ TIFFPredictorState ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FIELD_PREDICTOR ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
#define  TIFFTAG_PREDICTOR 128 
 int /*<<< orphan*/  TIFF_DIRTYDIRECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint16_vap ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(TIFF* tif, uint32 tag, va_list ap)
{
	TIFFPredictorState *sp = FUNC0(tif);

	FUNC2(sp != NULL);
	FUNC2(sp->vsetparent != NULL);

	switch (tag) {
	case TIFFTAG_PREDICTOR:
		sp->predictor = (uint16) FUNC4(ap, uint16_vap);
		FUNC1(tif, FIELD_PREDICTOR);
		break;
	default:
		return (*sp->vsetparent)(tif, tag, ap);
	}
	tif->tif_flags |= TIFF_DIRTYDIRECT;
	return 1;
}