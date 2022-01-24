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
struct TYPE_3__ {int member_0; int member_1; } ;
typedef  TYPE_1__ tjscalingfactor ;
typedef  int /*<<< orphan*/  tjhandle ;

/* Variables and functions */
 int TJFLAG_BOTTOMUP ; 
 int TJFLAG_NOREALLOC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alloc ; 
 scalar_t__ FUNC3 (unsigned char*,int,int,int,TYPE_1__) ; 
 scalar_t__ doYUV ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int,int,int) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  pad ; 
 char** pixFormatStr ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char const*,char const*,char*,int) ; 
 char** subName ; 
 char** subNameLong ; 
 unsigned long FUNC10 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,int,int,unsigned char**,unsigned long*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,int,int,unsigned char**,unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,int,int,unsigned char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int* tjPixelSize ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,unsigned long,char*) ; 

void FUNC17(tjhandle handle, unsigned char **dstBuf, unsigned long *dstSize,
              int w, int h, int pf, char *basename, int subsamp, int jpegQual,
              int flags)
{
  char tempStr[1024];
  unsigned char *srcBuf = NULL, *yuvBuf = NULL;
  const char *pfStr = pixFormatStr[pf];
  const char *buStrLong =
    (flags & TJFLAG_BOTTOMUP) ? "Bottom-Up" : "Top-Down ";
  const char *buStr = (flags & TJFLAG_BOTTOMUP) ? "BU" : "TD";

  if ((srcBuf = (unsigned char *)FUNC6(w * h * tjPixelSize[pf])) == NULL)
    FUNC0("Memory allocation failure");
  FUNC5(srcBuf, w, h, pf, flags);

  if (*dstBuf && *dstSize > 0) FUNC7(*dstBuf, 0, *dstSize);

  if (!alloc) flags |= TJFLAG_NOREALLOC;
  if (doYUV) {
    unsigned long yuvSize = FUNC10(w, pad, h, subsamp);
    tjscalingfactor sf = { 1, 1 };
    tjhandle handle2 = FUNC15();

    if (!handle2) FUNC1();

    if ((yuvBuf = (unsigned char *)FUNC6(yuvSize)) == NULL)
      FUNC0("Memory allocation failure");
    FUNC7(yuvBuf, 0, yuvSize);

    FUNC8("%s %s -> YUV %s ... ", pfStr, buStrLong, subNameLong[subsamp]);
    FUNC2(FUNC14(handle2, srcBuf, w, 0, h, pf, yuvBuf, pad, subsamp,
                     flags));
    FUNC13(handle2);
    if (FUNC3(yuvBuf, w, h, subsamp, sf)) FUNC8("Passed.\n");
    else FUNC8("FAILED!\n");

    FUNC8("YUV %s %s -> JPEG Q%d ... ", subNameLong[subsamp], buStrLong,
           jpegQual);
    FUNC2(FUNC12(handle, yuvBuf, w, pad, h, subsamp, dstBuf, dstSize,
                          jpegQual, flags));
  } else {
    FUNC8("%s %s -> %s Q%d ... ", pfStr, buStrLong, subNameLong[subsamp],
           jpegQual);
    FUNC2(FUNC11(handle, srcBuf, w, 0, h, pf, dstBuf, dstSize, subsamp,
                    jpegQual, flags));
  }

  FUNC9(tempStr, 1024, "%s_enc_%s_%s_%s_Q%d.jpg", basename, pfStr, buStr,
           subName[subsamp], jpegQual);
  FUNC16(*dstBuf, *dstSize, tempStr);
  FUNC8("Done.\n  Result in %s\n", tempStr);

bailout:
  if (yuvBuf) FUNC4(yuvBuf);
  if (srcBuf) FUNC4(srcBuf);
}