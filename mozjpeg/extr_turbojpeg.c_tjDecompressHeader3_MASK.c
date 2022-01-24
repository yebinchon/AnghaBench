#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tjhandle ;
struct TYPE_10__ {int image_width; int image_height; int jpeg_color_space; } ;
struct TYPE_8__ {scalar_t__ warning; int /*<<< orphan*/  setjmp_buffer; } ;
struct TYPE_9__ {int init; TYPE_1__ jerr; } ;

/* Variables and functions */
 int DECOMPRESS ; 
#define  JCS_CMYK 132 
#define  JCS_GRAYSCALE 131 
#define  JCS_RGB 130 
#define  JCS_YCCK 129 
#define  JCS_YCbCr 128 
 int TJCS_CMYK ; 
 int TJCS_GRAY ; 
 int TJCS_RGB ; 
 int TJCS_YCCK ; 
 int TJCS_YCbCr ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* dinfo ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* this ; 

int FUNC7(tjhandle handle,
                                  const unsigned char *jpegBuf,
                                  unsigned long jpegSize, int *width,
                                  int *height, int *jpegSubsamp,
                                  int *jpegColorspace)
{
	int retval=0;

	FUNC2(handle);
	if((this->init&DECOMPRESS)==0)
		FUNC0("tjDecompressHeader3(): Instance has not been initialized for decompression");

  if (jpegBuf == NULL || jpegSize <= 0 || width == NULL || height == NULL ||
      jpegSubsamp == NULL || jpegColorspace == NULL)
		FUNC0("tjDecompressHeader3(): Invalid argument");

  if (FUNC6(this->jerr.setjmp_buffer)) {
		/* If we get here, the JPEG code has signaled an error. */
		return -1;
	}

	FUNC4(dinfo, jpegBuf, jpegSize);
	FUNC5(dinfo, TRUE);

	*width=dinfo->image_width;
	*height=dinfo->image_height;
	*jpegSubsamp=FUNC1(dinfo);
  switch (dinfo->jpeg_color_space) {
		case JCS_GRAYSCALE:  *jpegColorspace=TJCS_GRAY;  break;
		case JCS_RGB:        *jpegColorspace=TJCS_RGB;  break;
		case JCS_YCbCr:      *jpegColorspace=TJCS_YCbCr;  break;
		case JCS_CMYK:       *jpegColorspace=TJCS_CMYK;  break;
		case JCS_YCCK:       *jpegColorspace=TJCS_YCCK;  break;
		default:             *jpegColorspace=-1;  break;
	}

	FUNC3(dinfo);

	if(*jpegSubsamp<0)
		FUNC0("tjDecompressHeader3(): Could not determine subsampling type for JPEG image");
	if(*jpegColorspace<0)
		FUNC0("tjDecompressHeader3(): Could not determine colorspace of JPEG image");
	if(*width<1 || *height<1)
		FUNC0("tjDecompressHeader3(): Invalid data returned in header");

	bailout:
	if(this->jerr.warning) retval=-1;
	return retval;
}