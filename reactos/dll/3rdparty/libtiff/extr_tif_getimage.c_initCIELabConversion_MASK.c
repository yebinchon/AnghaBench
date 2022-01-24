#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tileContigRoutine ;
struct TYPE_5__ {int /*<<< orphan*/  tif_clientdata; } ;
struct TYPE_4__ {int /*<<< orphan*/ * cielab; TYPE_3__* tif; } ;
typedef  TYPE_1__ TIFFRGBAImage ;
typedef  int /*<<< orphan*/  TIFFCIELabToRGB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,float**) ; 
 int /*<<< orphan*/  TIFFTAG_WHITEPOINT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  display_sRGB ; 
 int /*<<< orphan*/ * putcontig8bitCIELab ; 

__attribute__((used)) static tileContigRoutine
FUNC5(TIFFRGBAImage* img)
{
	static const char module[] = "initCIELabConversion";

	float   *whitePoint;
	float   refWhite[3];

	FUNC2(img->tif, TIFFTAG_WHITEPOINT, &whitePoint);
	if (whitePoint[1] == 0.0f ) {
		FUNC1(img->tif->tif_clientdata, module,
		    "Invalid value for WhitePoint tag.");
		return NULL;
        }

	if (!img->cielab) {
		img->cielab = (TIFFCIELabToRGB *)
			FUNC4(sizeof(TIFFCIELabToRGB));
		if (!img->cielab) {
			FUNC1(img->tif->tif_clientdata, module,
			    "No space for CIE L*a*b*->RGB conversion state.");
			return NULL;
		}
	}

	refWhite[1] = 100.0F;
	refWhite[0] = whitePoint[0] / whitePoint[1] * refWhite[1];
	refWhite[2] = (1.0F - whitePoint[0] - whitePoint[1])
		      / whitePoint[1] * refWhite[1];
	if (FUNC0(img->cielab, &display_sRGB, refWhite) < 0) {
		FUNC1(img->tif->tif_clientdata, module,
		    "Failed to initialize CIE L*a*b*->RGB conversion state.");
		FUNC3(img->cielab);
		return NULL;
	}

	return putcontig8bitCIELab;
}