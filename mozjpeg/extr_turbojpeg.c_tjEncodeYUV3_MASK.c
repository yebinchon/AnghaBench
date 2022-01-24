#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  isInstanceError; } ;
typedef  TYPE_1__ tjinstance ;
typedef  scalar_t__ tjhandle ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int NUMSUBOPT ; 
 int FUNC0 (int,int) ; 
 int TJSAMP_GRAY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__,unsigned char const*,int,int,int,int,unsigned char**,int*,int,int) ; 
 int FUNC5 (int,int,int) ; 
 int FUNC6 (int,int,int) ; 

int FUNC7(tjhandle handle, const unsigned char *srcBuf,
                           int width, int pitch, int height, int pixelFormat,
                           unsigned char *dstBuf, int pad, int subsamp,
                           int flags)
{
	unsigned char *dstPlanes[3];
	int pw0, ph0, strides[3], retval=-1;
  tjinstance *this = (tjinstance *)handle;

  if (!this) FUNC2("tjEncodeYUV3(): Invalid handle");
  this->isInstanceError = FALSE;

  if (width <= 0 || height <= 0 || dstBuf == NULL || pad < 0 || !FUNC3(pad) ||
      subsamp < 0 || subsamp >= NUMSUBOPT)
		FUNC1("tjEncodeYUV3(): Invalid argument");

	pw0=FUNC6(0, width, subsamp);
	ph0=FUNC5(0, height, subsamp);
	dstPlanes[0]=dstBuf;
	strides[0]=FUNC0(pw0, pad);
  if (subsamp == TJSAMP_GRAY) {
		strides[1]=strides[2]=0;
		dstPlanes[1]=dstPlanes[2]=NULL;
  } else {
		int pw1=FUNC6(1, width, subsamp);
		int ph1=FUNC5(1, height, subsamp);

		strides[1]=strides[2]=FUNC0(pw1, pad);
		dstPlanes[1]=dstPlanes[0]+strides[0]*ph0;
		dstPlanes[2]=dstPlanes[1]+strides[1]*ph1;
	}

	return FUNC4(handle, srcBuf, width, pitch, height, pixelFormat,
		dstPlanes, strides, subsamp, flags);

	bailout:
	return retval;
}