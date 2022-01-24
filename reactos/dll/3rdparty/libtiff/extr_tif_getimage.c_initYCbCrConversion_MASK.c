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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_5__ {int /*<<< orphan*/  tif_clientdata; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ycbcr; TYPE_3__* tif; } ;
typedef  int /*<<< orphan*/  TIFFYCbCrToRGB ;
typedef  int /*<<< orphan*/  TIFFRGBValue ;
typedef  TYPE_1__ TIFFRGBAImage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,float**) ; 
 int /*<<< orphan*/  TIFFTAG_REFERENCEBLACKWHITE ; 
 int /*<<< orphan*/  TIFFTAG_YCBCRCOEFFICIENTS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,float*,float*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (float) ; 

__attribute__((used)) static int
FUNC6(TIFFRGBAImage* img)
{
	static const char module[] = "initYCbCrConversion";

	float *luma, *refBlackWhite;

	if (img->ycbcr == NULL) {
		img->ycbcr = (TIFFYCbCrToRGB*) FUNC4(
		    FUNC3(sizeof (TIFFYCbCrToRGB), sizeof (long))  
		    + 4*256*sizeof (TIFFRGBValue)
		    + 2*256*sizeof (int)
		    + 3*256*sizeof (int32)
		    );
		if (img->ycbcr == NULL) {
			FUNC0(img->tif->tif_clientdata, module,
			    "No space for YCbCr->RGB conversion state");
			return (0);
		}
	}

	FUNC1(img->tif, TIFFTAG_YCBCRCOEFFICIENTS, &luma);
	FUNC1(img->tif, TIFFTAG_REFERENCEBLACKWHITE,
	    &refBlackWhite);

        /* Do some validation to avoid later issues. Detect NaN for now */
        /* and also if lumaGreen is zero since we divide by it later */
        if( luma[0] != luma[0] ||
            luma[1] != luma[1] ||
            luma[1] == 0.0 ||
            luma[2] != luma[2] )
        {
            FUNC0(img->tif->tif_clientdata, module,
                "Invalid values for YCbCrCoefficients tag");
            return (0);
        }

        if( !FUNC5(refBlackWhite[0]) ||
            !FUNC5(refBlackWhite[1]) ||
            !FUNC5(refBlackWhite[2]) ||
            !FUNC5(refBlackWhite[3]) ||
            !FUNC5(refBlackWhite[4]) ||
            !FUNC5(refBlackWhite[5]) )
        {
            FUNC0(img->tif->tif_clientdata, module,
                "Invalid values for ReferenceBlackWhite tag");
            return (0);
        }

	if (FUNC2(img->ycbcr, luma, refBlackWhite) < 0)
		return(0);
	return (1);
}