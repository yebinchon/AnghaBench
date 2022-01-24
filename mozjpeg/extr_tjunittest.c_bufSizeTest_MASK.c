#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * tjhandle ;

/* Variables and functions */
 int RAND_MAX ; 
 int /*<<< orphan*/  TJFLAG_NOREALLOC ; 
 int /*<<< orphan*/  TJPF_BGRX ; 
 int TJ_NUMSAMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ alloc ; 
 scalar_t__ doYUV ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 unsigned long FUNC8 (int,int,int) ; 
 unsigned long FUNC9 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char**,unsigned long*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*) ; 
 int /*<<< orphan*/ * FUNC14 () ; 

void FUNC15(void)
{
  int w, h, i, subsamp;
  unsigned char *srcBuf = NULL, *dstBuf = NULL;
  tjhandle handle = NULL;
  unsigned long dstSize = 0;

  if ((handle = FUNC14()) == NULL) FUNC1();

  FUNC5("Buffer size regression test\n");
  for (subsamp = 0; subsamp < TJ_NUMSAMP; subsamp++) {
    for (w = 1; w < 48; w++) {
      int maxh = (w == 1) ? 2048 : 48;

      for (h = 1; h < maxh; h++) {
        if (h % 100 == 0) FUNC5("%.4d x %.4d\b\b\b\b\b\b\b\b\b\b\b", w, h);
        if ((srcBuf = (unsigned char *)FUNC4(w * h * 4)) == NULL)
          FUNC0("Memory allocation failure");
        if (!alloc || doYUV) {
          if (doYUV) dstSize = FUNC9(w, pad, h, subsamp);
          else dstSize = FUNC8(w, h, subsamp);
          if ((dstBuf = (unsigned char *)FUNC7(dstSize)) == NULL)
            FUNC0("Memory allocation failure");
        }

        for (i = 0; i < w * h * 4; i++) {
          if (FUNC6() < RAND_MAX / 2) srcBuf[i] = 0;
          else srcBuf[i] = 255;
        }

        if (doYUV) {
          FUNC2(FUNC12(handle, srcBuf, w, 0, h, TJPF_BGRX, dstBuf, pad,
                           subsamp, 0));
        } else {
          FUNC2(FUNC10(handle, srcBuf, w, 0, h, TJPF_BGRX, &dstBuf,
                          &dstSize, subsamp, 100,
                          alloc ? 0 : TJFLAG_NOREALLOC));
        }
        FUNC3(srcBuf);  srcBuf = NULL;
        if (!alloc || doYUV) {
          FUNC13(dstBuf);  dstBuf = NULL;
        }

        if ((srcBuf = (unsigned char *)FUNC4(h * w * 4)) == NULL)
          FUNC0("Memory allocation failure");
        if (!alloc || doYUV) {
          if (doYUV) dstSize = FUNC9(h, pad, w, subsamp);
          else dstSize = FUNC8(h, w, subsamp);
          if ((dstBuf = (unsigned char *)FUNC7(dstSize)) == NULL)
            FUNC0("Memory allocation failure");
        }

        for (i = 0; i < h * w * 4; i++) {
          if (FUNC6() < RAND_MAX / 2) srcBuf[i] = 0;
          else srcBuf[i] = 255;
        }

        if (doYUV) {
          FUNC2(FUNC12(handle, srcBuf, h, 0, w, TJPF_BGRX, dstBuf, pad,
                           subsamp, 0));
        } else {
          FUNC2(FUNC10(handle, srcBuf, h, 0, w, TJPF_BGRX, &dstBuf,
                          &dstSize, subsamp, 100,
                          alloc ? 0 : TJFLAG_NOREALLOC));
        }
        FUNC3(srcBuf);  srcBuf = NULL;
        if (!alloc || doYUV) {
          FUNC13(dstBuf);  dstBuf = NULL;
        }
      }
    }
  }
  FUNC5("Done.      \n");

bailout:
  if (srcBuf) FUNC3(srcBuf);
  if (dstBuf) FUNC13(dstBuf);
  if (handle) FUNC11(handle);
}