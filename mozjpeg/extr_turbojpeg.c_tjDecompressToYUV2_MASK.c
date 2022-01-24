#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tjhandle ;
struct TYPE_9__ {int image_width; int image_height; } ;
struct TYPE_7__ {void* stopOnWarning; int /*<<< orphan*/  setjmp_buffer; } ;
struct TYPE_8__ {int headerRead; TYPE_1__ jerr; } ;

/* Variables and functions */
 void* FALSE ; 
 int NUMSF ; 
 int FUNC0 (int,int) ; 
 int TJFLAG_STOPONWARNING ; 
 int TJSAMP_GRAY ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__* dinfo ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,unsigned char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sf ; 
 TYPE_2__* this ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned char const*,unsigned long,unsigned char**,int,int*,int,int) ; 
 int FUNC10 (int,int,int) ; 
 int FUNC11 (int,int,int) ; 

int FUNC12(tjhandle handle, const unsigned char *jpegBuf,
                                 unsigned long jpegSize, unsigned char *dstBuf,
	int width, int pad, int height, int flags)
{
	unsigned char *dstPlanes[3];
	int pw0, ph0, strides[3], retval=-1, jpegSubsamp=-1;
	int i, jpegwidth, jpegheight, scaledw, scaledh;

	FUNC4(handle);
  this->jerr.stopOnWarning = (flags & TJFLAG_STOPONWARNING) ? TRUE : FALSE;

  if (jpegBuf == NULL || jpegSize <= 0 || dstBuf == NULL || width < 0 ||
      pad < 1 || !FUNC5(pad) || height < 0)
		FUNC2("tjDecompressToYUV2(): Invalid argument");

  if (FUNC8(this->jerr.setjmp_buffer)) {
		/* If we get here, the JPEG code has signaled an error. */
		return -1;
	}

	FUNC6(dinfo, jpegBuf, jpegSize);
	FUNC7(dinfo, TRUE);
	jpegSubsamp=FUNC3(dinfo);
	if(jpegSubsamp<0)
		FUNC2("tjDecompressToYUV2(): Could not determine subsampling type for JPEG image");

	jpegwidth=dinfo->image_width;  jpegheight=dinfo->image_height;
	if(width==0) width=jpegwidth;
	if(height==0) height=jpegheight;

  for (i = 0; i < NUMSF; i++) {
		scaledw=FUNC1(jpegwidth, sf[i]);
		scaledh=FUNC1(jpegheight, sf[i]);
		if(scaledw<=width && scaledh<=height)
			break;
	}
	if(i>=NUMSF)
		FUNC2("tjDecompressToYUV2(): Could not scale down to desired image dimensions");

	pw0=FUNC11(0, width, jpegSubsamp);
	ph0=FUNC10(0, height, jpegSubsamp);
	dstPlanes[0]=dstBuf;
	strides[0]=FUNC0(pw0, pad);
  if (jpegSubsamp == TJSAMP_GRAY) {
		strides[1]=strides[2]=0;
		dstPlanes[1]=dstPlanes[2]=NULL;
  } else {
		int pw1=FUNC11(1, width, jpegSubsamp);
		int ph1=FUNC10(1, height, jpegSubsamp);

		strides[1]=strides[2]=FUNC0(pw1, pad);
		dstPlanes[1]=dstPlanes[0]+strides[0]*ph0;
		dstPlanes[2]=dstPlanes[1]+strides[1]*ph1;
	}

	this->headerRead=1;
	return FUNC9(handle, jpegBuf, jpegSize, dstPlanes, width,
		strides, height, flags);

	bailout:
  this->jerr.stopOnWarning = FALSE;
	return retval;
}