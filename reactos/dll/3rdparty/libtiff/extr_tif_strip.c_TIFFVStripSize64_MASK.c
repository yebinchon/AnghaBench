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
typedef  int uint64 ;
typedef  int uint32 ;
typedef  int uint16 ;
struct TYPE_8__ {int td_imagelength; scalar_t__ td_planarconfig; scalar_t__ td_photometric; int td_samplesperpixel; int td_imagewidth; int td_bitspersample; } ;
struct TYPE_9__ {int /*<<< orphan*/  tif_clientdata; TYPE_1__ tif_dir; } ;
typedef  TYPE_1__ TIFFDirectory ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 scalar_t__ PHOTOMETRIC_YCBCR ; 
 scalar_t__ PLANARCONFIG_CONTIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  TIFFTAG_YCBCRSUBSAMPLING ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (TYPE_2__*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

uint64
FUNC7(TIFF* tif, uint32 nrows)
{
	static const char module[] = "TIFFVStripSize64";
	TIFFDirectory *td = &tif->tif_dir;
	if (nrows==(uint32)(-1))
		nrows=td->td_imagelength;
	if ((td->td_planarconfig==PLANARCONFIG_CONTIG)&&
	    (td->td_photometric == PHOTOMETRIC_YCBCR)&&
	    (!FUNC6(tif)))
	{
		/*
		 * Packed YCbCr data contain one Cb+Cr for every
		 * HorizontalSampling*VerticalSampling Y values.
		 * Must also roundup width and height when calculating
		 * since images that are not a multiple of the
		 * horizontal/vertical subsampling area include
		 * YCbCr data for the extended image.
		 */
		uint16 ycbcrsubsampling[2];
		uint16 samplingblock_samples;
		uint32 samplingblocks_hor;
		uint32 samplingblocks_ver;
		uint64 samplingrow_samples;
		uint64 samplingrow_size;
		if(td->td_samplesperpixel!=3)
		{
			FUNC0(tif->tif_clientdata,module,
			    "Invalid td_samplesperpixel value");
			return 0;
		}
		FUNC1(tif,TIFFTAG_YCBCRSUBSAMPLING,ycbcrsubsampling+0,
		    ycbcrsubsampling+1);
		if ((ycbcrsubsampling[0] != 1 && ycbcrsubsampling[0] != 2 && ycbcrsubsampling[0] != 4)
		    ||(ycbcrsubsampling[1] != 1 && ycbcrsubsampling[1] != 2 && ycbcrsubsampling[1] != 4))
		{
			FUNC0(tif->tif_clientdata,module,
				     "Invalid YCbCr subsampling (%dx%d)", 
				     ycbcrsubsampling[0], 
				     ycbcrsubsampling[1] );
			return 0;
		}
		samplingblock_samples=ycbcrsubsampling[0]*ycbcrsubsampling[1]+2;
		samplingblocks_hor=FUNC4(td->td_imagewidth,ycbcrsubsampling[0]);
		samplingblocks_ver=FUNC4(nrows,ycbcrsubsampling[1]);
		samplingrow_samples=FUNC5(tif,samplingblocks_hor,samplingblock_samples,module);
		samplingrow_size=FUNC3(FUNC5(tif,samplingrow_samples,td->td_bitspersample,module));
		return(FUNC5(tif,samplingrow_size,samplingblocks_ver,module));
	}
	else
		return(FUNC5(tif,nrows,FUNC2(tif),module));
}