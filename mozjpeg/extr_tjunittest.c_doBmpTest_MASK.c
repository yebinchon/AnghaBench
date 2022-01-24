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

/* Variables and functions */
 char* FUNC0 (char*,char*) ; 
 int FUNC1 (int,int) ; 
 int TJFLAG_BOTTOMUP ; 
 int TJPF_BGR ; 
 int TJPF_CMYK ; 
 int TJPF_GRAY ; 
 int TJPF_RGB ; 
 int TJPF_UNKNOWN ; 
 int TJPF_XBGR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,int,int,int,int,int) ; 
 scalar_t__ exitStatus ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,int,int,int,int) ; 
 char** pixFormatStr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,int,char*,char const*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 unsigned char* FUNC13 (char*,int*,int,int*,int*,int) ; 
 int* tjPixelSize ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

int FUNC16(const char *ext, int width, int align, int height, int pf,
              int flags)
{
  char filename[80], *md5sum, md5buf[65];
  int ps = tjPixelSize[pf], pitch = FUNC1(width * ps, align), loadWidth = 0,
    loadHeight = 0, retval = 0, pixelFormat = pf;
  unsigned char *buf = NULL;
  char *md5ref;

  if (pf == TJPF_GRAY) {
    md5ref = !FUNC10(ext, "ppm") ? "112c682e82ce5de1cca089e20d60000b" :
                                       "51976530acf75f02beddf5d21149101d";
  } else {
    md5ref = !FUNC10(ext, "ppm") ? "c0c9f772b464d1896326883a5c79c545" :
                                       "6d659071b9bfcdee2def22cb58ddadca";
  }

  if ((buf = (unsigned char *)FUNC11(pitch * height)) == NULL)
    FUNC2("Could not allocate memory");
  FUNC7(buf, width, pitch, height, pf, flags);

  FUNC9(filename, 80, "test_bmp_%s_%d_%s.%s", pixFormatStr[pf], align,
           (flags & TJFLAG_BOTTOMUP) ? "bu" : "td", ext);
  FUNC5(FUNC14(filename, buf, width, pitch, height, pf, flags));
  md5sum = FUNC0(filename, md5buf);
  if (FUNC10(md5sum, md5ref))
    FUNC3(filename, md5sum, md5ref);

  FUNC12(buf);  buf = NULL;
  if ((buf = FUNC13(filename, &loadWidth, align, &loadHeight, &pf,
                         flags)) == NULL)
    FUNC4();
  if (width != loadWidth || height != loadHeight) {
    FUNC8("\n   Image dimensions of %s are bogus\n", filename);
    retval = -1;  goto bailout;
  }
  if (!FUNC6(buf, width, pitch, height, pf, flags, 0)) {
    FUNC8("\n   Pixel data in %s is bogus\n", filename);
    retval = -1;  goto bailout;
  }
  if (pf == TJPF_GRAY) {
    FUNC12(buf);  buf = NULL;
    pf = TJPF_XBGR;
    if ((buf = FUNC13(filename, &loadWidth, align, &loadHeight, &pf,
                           flags)) == NULL)
      FUNC4();
    pitch = FUNC1(width * tjPixelSize[pf], align);
    if (!FUNC6(buf, width, pitch, height, pf, flags, 1)) {
      FUNC8("\n   Converting %s to RGB failed\n", filename);
      retval = -1;  goto bailout;
    }

    FUNC12(buf);  buf = NULL;
    pf = TJPF_CMYK;
    if ((buf = FUNC13(filename, &loadWidth, align, &loadHeight, &pf,
                           flags)) == NULL)
      FUNC4();
    pitch = FUNC1(width * tjPixelSize[pf], align);
    if (!FUNC6(buf, width, pitch, height, pf, flags, 1)) {
      FUNC8("\n   Converting %s to CMYK failed\n", filename);
      retval = -1;  goto bailout;
    }
  }
  /* Verify that tjLoadImage() returns the proper "preferred" pixel format for
     the file type. */
  FUNC12(buf);  buf = NULL;
  pf = pixelFormat;
  pixelFormat = TJPF_UNKNOWN;
  if ((buf = FUNC13(filename, &loadWidth, align, &loadHeight,
                         &pixelFormat, flags)) == NULL)
    FUNC4();
  if ((pf == TJPF_GRAY && pixelFormat != TJPF_GRAY) ||
      (pf != TJPF_GRAY && !FUNC10(ext, "bmp") &&
       pixelFormat != TJPF_BGR) ||
      (pf != TJPF_GRAY && !FUNC10(ext, "ppm") &&
       pixelFormat != TJPF_RGB)) {
    FUNC8("\n   tjLoadImage() returned unexpected pixel format: %s\n",
           pixFormatStr[pixelFormat]);
    retval = -1;
  }
  FUNC15(filename);

bailout:
  if (buf) FUNC12(buf);
  if (exitStatus < 0) return exitStatus;
  return retval;
}