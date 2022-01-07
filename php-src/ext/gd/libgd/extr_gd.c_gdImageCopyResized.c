
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_13__ {scalar_t__ trueColor; } ;


 int gdFree (int*) ;
 int gdImageAlpha (TYPE_1__*,int) ;
 int gdImageBlue (TYPE_1__*,int) ;
 int gdImageColorResolveAlpha (TYPE_1__*,int ,int ,int ,int ) ;
 int gdImageGetPixel (TYPE_1__*,int,int) ;
 int gdImageGetTransparent (TYPE_1__*) ;
 int gdImageGetTrueColorPixel (TYPE_1__*,int,int) ;
 int gdImageGreen (TYPE_1__*,int) ;
 int gdImageRed (TYPE_1__*,int) ;
 int gdImageSetPixel (TYPE_1__*,int,int,int) ;
 scalar_t__ gdMalloc (int) ;
 int gdMaxColors ;
 int gdTrueColorGetAlpha (int) ;
 int gdTrueColorGetBlue (int) ;
 int gdTrueColorGetGreen (int) ;
 int gdTrueColorGetRed (int) ;
 scalar_t__ overflow2 (int,int) ;

void gdImageCopyResized (gdImagePtr dst, gdImagePtr src, int dstX, int dstY, int srcX, int srcY, int dstW, int dstH, int srcW, int srcH)
{
 int c;
 int x, y;
 int tox, toy;
 int ydest;
 int i;
 int colorMap[gdMaxColors];

 int *stx, *sty;

 if (overflow2(sizeof(int), srcW)) {
  return;
 }
 if (overflow2(sizeof(int), srcH)) {
  return;
 }

 stx = (int *) gdMalloc (sizeof (int) * srcW);
 sty = (int *) gdMalloc (sizeof (int) * srcH);


 for (i = 0; (i < srcW); i++) {
  stx[i] = dstW * (i+1) / srcW - dstW * i / srcW ;
 }
 for (i = 0; (i < srcH); i++) {
  sty[i] = dstH * (i+1) / srcH - dstH * i / srcH ;
 }
 for (i = 0; (i < gdMaxColors); i++) {
  colorMap[i] = (-1);
 }
 toy = dstY;
 for (y = srcY; (y < (srcY + srcH)); y++) {
  for (ydest = 0; (ydest < sty[y - srcY]); ydest++) {
   tox = dstX;
   for (x = srcX; (x < (srcX + srcW)); x++) {
    int nc = 0;
    int mapTo;
    if (!stx[x - srcX]) {
     continue;
    }
    if (dst->trueColor) {

     if (!src->trueColor) {
        int tmp = gdImageGetPixel (src, x, y);
        mapTo = gdImageGetTrueColorPixel (src, x, y);
        if (gdImageGetTransparent (src) == tmp) {

       tox += stx[x - srcX];
         continue;
        }
     } else {

        mapTo = gdImageGetTrueColorPixel (src, x, y);

      if (gdImageGetTransparent (src) == mapTo) {

       tox += stx[x - srcX];
       continue;
      }
     }
    } else {
     c = gdImageGetPixel (src, x, y);

     if (gdImageGetTransparent (src) == c) {
           tox += stx[x - srcX];
           continue;
     }
     if (src->trueColor) {

           mapTo = gdImageColorResolveAlpha(dst, gdTrueColorGetRed(c),
                    gdTrueColorGetGreen(c),
                    gdTrueColorGetBlue(c),
                    gdTrueColorGetAlpha (c));
     } else {

      if (colorMap[c] == (-1)) {

       if (dst == src) {
        nc = c;
       } else {


        nc = gdImageColorResolveAlpha(dst, gdImageRed(src, c),
               gdImageGreen(src, c),
               gdImageBlue(src, c),
               gdImageAlpha(src, c));
       }
       colorMap[c] = nc;
      }
      mapTo = colorMap[c];
     }
    }
    for (i = 0; (i < stx[x - srcX]); i++) {
     gdImageSetPixel (dst, tox, toy, mapTo);
     tox++;
    }
   }
   toy++;
  }
 }
 gdFree (stx);
 gdFree (sty);
}
