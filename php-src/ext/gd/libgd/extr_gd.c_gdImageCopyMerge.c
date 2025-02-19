
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gdImagePtr ;


 int gdImageBlue (scalar_t__,int) ;
 int gdImageColorResolve (scalar_t__,int,int,int) ;
 int gdImageGetPixel (scalar_t__,int,int) ;
 int gdImageGetTransparent (scalar_t__) ;
 int gdImageGreen (scalar_t__,int) ;
 int gdImageRed (scalar_t__,int) ;
 int gdImageSetPixel (scalar_t__,int,int,int) ;

void gdImageCopyMerge (gdImagePtr dst, gdImagePtr src, int dstX, int dstY, int srcX, int srcY, int w, int h, int pct)
{
 int c, dc;
 int x, y;
 int tox, toy;
 int ncR, ncG, ncB;
 toy = dstY;

 for (y = srcY; y < (srcY + h); y++) {
  tox = dstX;
  for (x = srcX; x < (srcX + w); x++) {
   int nc;
   c = gdImageGetPixel(src, x, y);

   if (gdImageGetTransparent(src) == c) {
    tox++;
    continue;
   }

   if (dst == src) {
    nc = c;
   } else {
    dc = gdImageGetPixel(dst, tox, toy);

     ncR = (int)(gdImageRed (src, c) * (pct / 100.0) + gdImageRed (dst, dc) * ((100 - pct) / 100.0));
     ncG = (int)(gdImageGreen (src, c) * (pct / 100.0) + gdImageGreen (dst, dc) * ((100 - pct) / 100.0));
     ncB = (int)(gdImageBlue (src, c) * (pct / 100.0) + gdImageBlue (dst, dc) * ((100 - pct) / 100.0));


    nc = gdImageColorResolve (dst, ncR, ncG, ncB);
   }
   gdImageSetPixel (dst, tox, toy, nc);
   tox++;
  }
  toy++;
 }
}
