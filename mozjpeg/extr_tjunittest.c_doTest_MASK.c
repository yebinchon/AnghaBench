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
 int TJFLAG_BOTTOMUP ; 
 int TJFLAG_FASTUPSAMPLE ; 
 int TJPF_RGBA ; 
 int TJPF_RGBX ; 
 int TJPF_XRGB ; 
 int TJSAMP_411 ; 
 int TJSAMP_420 ; 
 int TJSAMP_422 ; 
 int TJSAMP_440 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  alloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char**,unsigned long*,int,int,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned long,int,int,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 unsigned long FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 

void FUNC11(int w, int h, const int *formats, int nformats, int subsamp,
            char *basename)
{
  tjhandle chandle = NULL, dhandle = NULL;
  unsigned char *dstBuf = NULL;
  unsigned long size = 0;
  int pfi, pf, i;

  if (!alloc)
    size = FUNC6(w, h, subsamp);
  if (size != 0)
    if ((dstBuf = (unsigned char *)FUNC5(size)) == NULL)
      FUNC0("Memory allocation failure.");

  if ((chandle = FUNC9()) == NULL ||
      (dhandle = FUNC10()) == NULL)
    FUNC1();

  for (pfi = 0; pfi < nformats; pfi++) {
    for (i = 0; i < 2; i++) {
      int flags = 0;

      if (subsamp == TJSAMP_422 || subsamp == TJSAMP_420 ||
          subsamp == TJSAMP_440 || subsamp == TJSAMP_411)
        flags |= TJFLAG_FASTUPSAMPLE;
      if (i == 1) flags |= TJFLAG_BOTTOMUP;
      pf = formats[pfi];
      FUNC2(chandle, &dstBuf, &size, w, h, pf, basename, subsamp, 100,
               flags);
      FUNC3(dhandle, dstBuf, size, w, h, pf, basename, subsamp, flags);
      if (pf >= TJPF_RGBX && pf <= TJPF_XRGB) {
        FUNC4("\n");
        FUNC3(dhandle, dstBuf, size, w, h, pf + (TJPF_RGBA - TJPF_RGBX),
                   basename, subsamp, flags);
      }
      FUNC4("\n");
    }
  }
  FUNC4("--------------------\n\n");

bailout:
  if (chandle) FUNC7(chandle);
  if (dhandle) FUNC7(dhandle);
  if (dstBuf) FUNC8(dstBuf);
}