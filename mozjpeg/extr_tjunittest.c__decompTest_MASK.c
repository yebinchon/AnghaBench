#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int num; int denom; } ;
typedef  TYPE_1__ tjscalingfactor ;
typedef  int /*<<< orphan*/  tjhandle ;

/* Variables and functions */
 int TJFLAG_BOTTOMUP ; 
 int FUNC0 (int,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char*,int,int,int,int,TYPE_1__,int) ; 
 scalar_t__ FUNC5 (unsigned char*,int,int,int,TYPE_1__) ; 
 scalar_t__ doYUV ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  pad ; 
 char** pixFormatStr ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char** subNameLong ; 
 unsigned long FUNC10 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int,unsigned char*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned char*,unsigned long,unsigned char*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned char*,unsigned long,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned char*,unsigned long,unsigned char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int* tjPixelSize ; 

void FUNC17(tjhandle handle, unsigned char *jpegBuf,
                 unsigned long jpegSize, int w, int h, int pf, char *basename,
                 int subsamp, int flags, tjscalingfactor sf)
{
  unsigned char *dstBuf = NULL, *yuvBuf = NULL;
  int _hdrw = 0, _hdrh = 0, _hdrsubsamp = -1;
  int scaledWidth = FUNC0(w, sf);
  int scaledHeight = FUNC0(h, sf);
  unsigned long dstSize = 0;

  FUNC3(FUNC13(handle, jpegBuf, jpegSize, &_hdrw, &_hdrh,
                          &_hdrsubsamp));
  if (_hdrw != w || _hdrh != h || _hdrsubsamp != subsamp)
    FUNC1("Incorrect JPEG header");

  dstSize = scaledWidth * scaledHeight * tjPixelSize[pf];
  if ((dstBuf = (unsigned char *)FUNC7(dstSize)) == NULL)
    FUNC1("Memory allocation failure");
  FUNC8(dstBuf, 0, dstSize);

  if (doYUV) {
    unsigned long yuvSize = FUNC10(scaledWidth, pad, scaledHeight,
                                          subsamp);
    tjhandle handle2 = FUNC16();

    if (!handle2) FUNC2();

    if ((yuvBuf = (unsigned char *)FUNC7(yuvSize)) == NULL)
      FUNC1("Memory allocation failure");
    FUNC8(yuvBuf, 0, yuvSize);

    FUNC9("JPEG -> YUV %s ", subNameLong[subsamp]);
    if (sf.num != 1 || sf.denom != 1)
      FUNC9("%d/%d ... ", sf.num, sf.denom);
    else FUNC9("... ");
    FUNC3(FUNC14(handle, jpegBuf, jpegSize, yuvBuf, scaledWidth, pad,
                           scaledHeight, flags));
    if (FUNC5(yuvBuf, scaledWidth, scaledHeight, subsamp, sf))
      FUNC9("Passed.\n");
    else FUNC9("FAILED!\n");

    FUNC9("YUV %s -> %s %s ... ", subNameLong[subsamp], pixFormatStr[pf],
           (flags & TJFLAG_BOTTOMUP) ? "Bottom-Up" : "Top-Down ");
    FUNC3(FUNC11(handle2, yuvBuf, pad, subsamp, dstBuf, scaledWidth, 0,
                    scaledHeight, pf, flags));
    FUNC15(handle2);
  } else {
    FUNC9("JPEG -> %s %s ", pixFormatStr[pf],
           (flags & TJFLAG_BOTTOMUP) ? "Bottom-Up" : "Top-Down ");
    if (sf.num != 1 || sf.denom != 1)
      FUNC9("%d/%d ... ", sf.num, sf.denom);
    else FUNC9("... ");
    FUNC3(FUNC12(handle, jpegBuf, jpegSize, dstBuf, scaledWidth, 0,
                      scaledHeight, pf, flags));
  }

  if (FUNC4(dstBuf, scaledWidth, scaledHeight, pf, subsamp, sf, flags))
    FUNC9("Passed.");
  else FUNC9("FAILED!");
  FUNC9("\n");

bailout:
  if (yuvBuf) FUNC6(yuvBuf);
  if (dstBuf) FUNC6(dstBuf);
}