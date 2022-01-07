
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num; int denom; } ;
typedef TYPE_1__ tjscalingfactor ;
typedef int tjhandle ;


 int TJFLAG_BOTTOMUP ;
 int TJSCALED (int,TYPE_1__) ;
 int _throw (char*) ;
 int _throwtj () ;
 int _tj (int ) ;
 scalar_t__ checkBuf (unsigned char*,int,int,int,int,TYPE_1__,int) ;
 scalar_t__ checkBufYUV (unsigned char*,int,int,int,TYPE_1__) ;
 scalar_t__ doYUV ;
 int free (unsigned char*) ;
 scalar_t__ malloc (unsigned long) ;
 int memset (unsigned char*,int ,unsigned long) ;
 int pad ;
 char** pixFormatStr ;
 int printf (char*,...) ;
 char** subNameLong ;
 unsigned long tjBufSizeYUV2 (int,int ,int,int) ;
 int tjDecodeYUV (int ,unsigned char*,int ,int,unsigned char*,int,int ,int,int,int) ;
 int tjDecompress2 (int ,unsigned char*,unsigned long,unsigned char*,int,int ,int,int,int) ;
 int tjDecompressHeader2 (int ,unsigned char*,unsigned long,int*,int*,int*) ;
 int tjDecompressToYUV2 (int ,unsigned char*,unsigned long,unsigned char*,int,int ,int,int) ;
 int tjDestroy (int ) ;
 int tjInitDecompress () ;
 int* tjPixelSize ;

void _decompTest(tjhandle handle, unsigned char *jpegBuf,
                 unsigned long jpegSize, int w, int h, int pf, char *basename,
                 int subsamp, int flags, tjscalingfactor sf)
{
  unsigned char *dstBuf = ((void*)0), *yuvBuf = ((void*)0);
  int _hdrw = 0, _hdrh = 0, _hdrsubsamp = -1;
  int scaledWidth = TJSCALED(w, sf);
  int scaledHeight = TJSCALED(h, sf);
  unsigned long dstSize = 0;

  _tj(tjDecompressHeader2(handle, jpegBuf, jpegSize, &_hdrw, &_hdrh,
                          &_hdrsubsamp));
  if (_hdrw != w || _hdrh != h || _hdrsubsamp != subsamp)
    _throw("Incorrect JPEG header");

  dstSize = scaledWidth * scaledHeight * tjPixelSize[pf];
  if ((dstBuf = (unsigned char *)malloc(dstSize)) == ((void*)0))
    _throw("Memory allocation failure");
  memset(dstBuf, 0, dstSize);

  if (doYUV) {
    unsigned long yuvSize = tjBufSizeYUV2(scaledWidth, pad, scaledHeight,
                                          subsamp);
    tjhandle handle2 = tjInitDecompress();

    if (!handle2) _throwtj();

    if ((yuvBuf = (unsigned char *)malloc(yuvSize)) == ((void*)0))
      _throw("Memory allocation failure");
    memset(yuvBuf, 0, yuvSize);

    printf("JPEG -> YUV %s ", subNameLong[subsamp]);
    if (sf.num != 1 || sf.denom != 1)
      printf("%d/%d ... ", sf.num, sf.denom);
    else printf("... ");
    _tj(tjDecompressToYUV2(handle, jpegBuf, jpegSize, yuvBuf, scaledWidth, pad,
                           scaledHeight, flags));
    if (checkBufYUV(yuvBuf, scaledWidth, scaledHeight, subsamp, sf))
      printf("Passed.\n");
    else printf("FAILED!\n");

    printf("YUV %s -> %s %s ... ", subNameLong[subsamp], pixFormatStr[pf],
           (flags & TJFLAG_BOTTOMUP) ? "Bottom-Up" : "Top-Down ");
    _tj(tjDecodeYUV(handle2, yuvBuf, pad, subsamp, dstBuf, scaledWidth, 0,
                    scaledHeight, pf, flags));
    tjDestroy(handle2);
  } else {
    printf("JPEG -> %s %s ", pixFormatStr[pf],
           (flags & TJFLAG_BOTTOMUP) ? "Bottom-Up" : "Top-Down ");
    if (sf.num != 1 || sf.denom != 1)
      printf("%d/%d ... ", sf.num, sf.denom);
    else printf("... ");
    _tj(tjDecompress2(handle, jpegBuf, jpegSize, dstBuf, scaledWidth, 0,
                      scaledHeight, pf, flags));
  }

  if (checkBuf(dstBuf, scaledWidth, scaledHeight, pf, subsamp, sf, flags))
    printf("Passed.");
  else printf("FAILED!");
  printf("\n");

bailout:
  if (yuvBuf) free(yuvBuf);
  if (dstBuf) free(dstBuf);
}
