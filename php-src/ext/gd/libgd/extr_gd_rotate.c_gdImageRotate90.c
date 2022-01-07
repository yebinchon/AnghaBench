
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_12__ {int sy; int sx; int alphaBlendingFlag; int transparent; scalar_t__ trueColor; } ;
typedef int (* FuncPtr ) (gdImagePtr,int,int) ;


 int gdImageAlpha (TYPE_1__*,int) ;
 int gdImageBlue (TYPE_1__*,int) ;
 TYPE_1__* gdImageCreateTrueColor (int,int) ;
 int gdImageGetPixel (gdImagePtr,int,int) ;
 int gdImageGetTrueColorPixel (gdImagePtr,int,int) ;
 int gdImageGreen (TYPE_1__*,int) ;
 int gdImagePaletteCopy (TYPE_1__*,TYPE_1__*) ;
 int gdImageRed (TYPE_1__*,int) ;
 int gdImageSetPixel (TYPE_1__*,int,int,int) ;
 int gdTrueColorAlpha (int,int,int,int) ;

gdImagePtr gdImageRotate90 (gdImagePtr src, int ignoretransparent)
{
 int uY, uX;
 int c,r,g,b,a;
 gdImagePtr dst;
 typedef int (*FuncPtr)(gdImagePtr, int, int);
 FuncPtr f;

 if (src->trueColor) {
  f = gdImageGetTrueColorPixel;
 } else {
  f = gdImageGetPixel;
 }
 dst = gdImageCreateTrueColor(src->sy, src->sx);

 if (dst != ((void*)0)) {
  int old_blendmode = dst->alphaBlendingFlag;
  dst->alphaBlendingFlag = 0;

  dst->transparent = src->transparent;

  gdImagePaletteCopy (dst, src);

  for (uY = 0; uY<src->sy; uY++) {
   for (uX = 0; uX<src->sx; uX++) {
    c = f (src, uX, uY);
    if (!src->trueColor) {
     r = gdImageRed(src,c);
     g = gdImageGreen(src,c);
     b = gdImageBlue(src,c);
     a = gdImageAlpha(src,c);
     c = gdTrueColorAlpha(r, g, b, a);
    }
    if (ignoretransparent && c == dst->transparent) {
     gdImageSetPixel(dst, uY, (dst->sy - uX - 1), dst->transparent);
    } else {
     gdImageSetPixel(dst, uY, (dst->sy - uX - 1), c);
    }
   }
  }
  dst->alphaBlendingFlag = old_blendmode;
 }

 return dst;
}
