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
typedef  int /*<<< orphan*/ * tjhandle ;
struct TYPE_3__ {int num; int denom; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int,TYPE_1__) ; 
 int TJ_GRAYSCALE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned char FUNC4 (unsigned char) ; 
 double benchTime ; 
 scalar_t__ decompOnly ; 
 scalar_t__ doTile ; 
 int /*<<< orphan*/  doWrite ; 
 scalar_t__ doYUV ; 
 char* ext ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 double FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int,int) ; 
 int FUNC10 (int,int) ; 
 size_t pf ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int quiet ; 
 TYPE_1__ sf ; 
 char* FUNC12 (double,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,...) ; 
 char* FUNC14 (char*,char) ; 
 char** subName ; 
 int* tjBlueOffset ; 
 int FUNC15 (int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int,unsigned char*,int,int,int,size_t,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,unsigned char*,unsigned long,unsigned char*,int,int,int,size_t,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *,unsigned char*,unsigned long,unsigned char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int* tjGreenOffset ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int* tjPixelSize ; 
 int* tjRedOffset ; 
 int FUNC21 (char*,unsigned char*,int,int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ) ; 
 double warmup ; 
 int /*<<< orphan*/  yuvPad ; 

int FUNC22(unsigned char *srcBuf, unsigned char **jpegBuf,
           unsigned long *jpegSize, unsigned char *dstBuf, int w, int h,
           int subsamp, int jpegQual, char *fileName, int tilew, int tileh)
{
  char tempStr[1024], sizeStr[20] = "\0", qualStr[6] = "\0", *ptr;
  FILE *file = NULL;
  tjhandle handle = NULL;
  int row, col, iter = 0, dstBufAlloc = 0, retval = 0;
  double elapsed, elapsedDecode;
  int ps = tjPixelSize[pf];
  int scaledw = FUNC0(w, sf);
  int scaledh = FUNC0(h, sf);
  int pitch = scaledw * ps;
  int ntilesw = (w + tilew - 1) / tilew, ntilesh = (h + tileh - 1) / tileh;
  unsigned char *dstPtr, *dstPtr2, *yuvBuf = NULL;

  if (jpegQual > 0) {
    FUNC13(qualStr, 6, "_Q%d", jpegQual);
    qualStr[5] = 0;
  }

  if ((handle = FUNC20()) == NULL)
    FUNC1("executing tjInitDecompress()");

  if (dstBuf == NULL) {
    if ((dstBuf = (unsigned char *)FUNC8(pitch * scaledh)) == NULL)
      FUNC3("allocating destination buffer");
    dstBufAlloc = 1;
  }
  /* Set the destination buffer to gray so we know whether the decompressor
     attempted to write to it */
  FUNC9(dstBuf, 127, pitch * scaledh);

  if (doYUV) {
    int width = doTile ? tilew : scaledw;
    int height = doTile ? tileh : scaledh;
    int yuvSize = FUNC15(width, yuvPad, height, subsamp);

    if ((yuvBuf = (unsigned char *)FUNC8(yuvSize)) == NULL)
      FUNC3("allocating YUV buffer");
    FUNC9(yuvBuf, 127, yuvSize);
  }

  /* Benchmark */
  iter = -1;
  elapsed = elapsedDecode = 0.;
  while (1) {
    int tile = 0;
    double start = FUNC7();

    for (row = 0, dstPtr = dstBuf; row < ntilesh;
         row++, dstPtr += pitch * tileh) {
      for (col = 0, dstPtr2 = dstPtr; col < ntilesw;
           col++, tile++, dstPtr2 += ps * tilew) {
        int width = doTile ? FUNC10(tilew, w - col * tilew) : scaledw;
        int height = doTile ? FUNC10(tileh, h - row * tileh) : scaledh;

        if (doYUV) {
          double startDecode;

          if (FUNC18(handle, jpegBuf[tile], jpegSize[tile], yuvBuf,
                                 width, yuvPad, height, flags) == -1)
            FUNC1("executing tjDecompressToYUV2()");
          startDecode = FUNC7();
          if (FUNC16(handle, yuvBuf, yuvPad, subsamp, dstPtr2, width,
                          pitch, height, pf, flags) == -1)
            FUNC1("executing tjDecodeYUV()");
          if (iter >= 0) elapsedDecode += FUNC7() - startDecode;
        } else if (FUNC17(handle, jpegBuf[tile], jpegSize[tile],
                                 dstPtr2, width, pitch, height, pf,
                                 flags) == -1)
          FUNC1("executing tjDecompress2()");
      }
    }
    elapsed += FUNC7() - start;
    if (iter >= 0) {
      iter++;
      if (elapsed >= benchTime) break;
    } else if (elapsed >= warmup) {
      iter = 0;
      elapsed = elapsedDecode = 0.;
    }
  }
  if (doYUV) elapsed -= elapsedDecode;

  if (FUNC19(handle) == -1) FUNC1("executing tjDestroy()");
  handle = NULL;

  if (quiet) {
    FUNC11("%-6s%s",
           FUNC12((double)(w * h) / 1000000. * (double)iter / elapsed, 4,
                  tempStr, 1024),
           quiet == 2 ? "\n" : "  ");
    if (doYUV)
      FUNC11("%s\n",
             FUNC12((double)(w * h) / 1000000. * (double)iter / elapsedDecode,
                    4, tempStr, 1024));
    else if (quiet != 2) FUNC11("\n");
  } else {
    FUNC11("%s --> Frame rate:         %f fps\n",
           doYUV ? "Decomp to YUV" : "Decompress   ", (double)iter / elapsed);
    FUNC11("                  Throughput:         %f Megapixels/sec\n",
           (double)(w * h) / 1000000. * (double)iter / elapsed);
    if (doYUV) {
      FUNC11("YUV Decode    --> Frame rate:         %f fps\n",
             (double)iter / elapsedDecode);
      FUNC11("                  Throughput:         %f Megapixels/sec\n",
             (double)(w * h) / 1000000. * (double)iter / elapsedDecode);
    }
  }

  if (!doWrite) goto bailout;

  if (sf.num != 1 || sf.denom != 1)
    FUNC13(sizeStr, 20, "%d_%d", sf.num, sf.denom);
  else if (tilew != w || tileh != h)
    FUNC13(sizeStr, 20, "%dx%d", tilew, tileh);
  else FUNC13(sizeStr, 20, "full");
  if (decompOnly)
    FUNC13(tempStr, 1024, "%s_%s.%s", fileName, sizeStr, ext);
  else
    FUNC13(tempStr, 1024, "%s_%s%s_%s.%s", fileName, subName[subsamp],
             qualStr, sizeStr, ext);

  if (FUNC21(tempStr, dstBuf, scaledw, 0, scaledh, pf, flags) == -1)
    FUNC2("saving bitmap");
  ptr = FUNC14(tempStr, '.');
  FUNC13(ptr, 1024 - (ptr - tempStr), "-err.%s", ext);
  if (srcBuf && sf.num == 1 && sf.denom == 1) {
    if (!quiet) FUNC11("Compression error written to %s.\n", tempStr);
    if (subsamp == TJ_GRAYSCALE) {
      int index, index2;

      for (row = 0, index = 0; row < h; row++, index += pitch) {
        for (col = 0, index2 = index; col < w; col++, index2 += ps) {
          int rindex = index2 + tjRedOffset[pf];
          int gindex = index2 + tjGreenOffset[pf];
          int bindex = index2 + tjBlueOffset[pf];
          int y = (int)((double)srcBuf[rindex] * 0.299 +
                        (double)srcBuf[gindex] * 0.587 +
                        (double)srcBuf[bindex] * 0.114 + 0.5);

          if (y > 255) y = 255;
          if (y < 0) y = 0;
          dstBuf[rindex] = FUNC4(dstBuf[rindex] - y);
          dstBuf[gindex] = FUNC4(dstBuf[gindex] - y);
          dstBuf[bindex] = FUNC4(dstBuf[bindex] - y);
        }
      }
    } else {
      for (row = 0; row < h; row++)
        for (col = 0; col < w * ps; col++)
          dstBuf[pitch * row + col] =
            FUNC4(dstBuf[pitch * row + col] - srcBuf[pitch * row + col]);
    }
    if (FUNC21(tempStr, dstBuf, w, 0, h, pf, flags) == -1)
      FUNC2("saving bitmap");
  }

bailout:
  if (file) FUNC5(file);
  if (handle) FUNC19(handle);
  if (dstBuf && dstBufAlloc) FUNC6(dstBuf);
  if (yuvBuf) FUNC6(yuvBuf);
  return retval;
}