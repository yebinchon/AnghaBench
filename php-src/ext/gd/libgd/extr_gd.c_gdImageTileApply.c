
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_9__ {int* tileColorMap; scalar_t__ trueColor; int * alpha; int * blue; int * green; int * red; struct TYPE_9__* tile; } ;


 int gdImageColorResolveAlpha (TYPE_1__*,int ,int ,int ,int ) ;
 int gdImageGetPixel (TYPE_1__*,int,int) ;
 int gdImageGetTransparent (TYPE_1__*) ;
 int gdImageSX (TYPE_1__*) ;
 int gdImageSY (TYPE_1__*) ;
 int gdImageSetPixel (TYPE_1__*,int,int,int) ;
 int gdTrueColorAlpha (int ,int ,int ,int ) ;
 int gdTrueColorGetAlpha (int) ;
 int gdTrueColorGetBlue (int) ;
 int gdTrueColorGetGreen (int) ;
 int gdTrueColorGetRed (int) ;

__attribute__((used)) static void gdImageTileApply (gdImagePtr im, int x, int y)
{
 gdImagePtr tile = im->tile;
 int srcx, srcy;
 int p;
 if (!tile) {
  return;
 }
 srcx = x % gdImageSX(tile);
 srcy = y % gdImageSY(tile);
 if (im->trueColor) {
  p = gdImageGetPixel(tile, srcx, srcy);
  if (p != gdImageGetTransparent (tile)) {
   if (!tile->trueColor) {
    p = gdTrueColorAlpha(tile->red[p], tile->green[p], tile->blue[p], tile->alpha[p]);
   }
   gdImageSetPixel(im, x, y, p);
  }
 } else {
  p = gdImageGetPixel(tile, srcx, srcy);

  if (p != gdImageGetTransparent(tile)) {
   if (tile->trueColor) {

    gdImageSetPixel(im, x, y, gdImageColorResolveAlpha(im,
           gdTrueColorGetRed(p),
           gdTrueColorGetGreen(p),
           gdTrueColorGetBlue(p),
           gdTrueColorGetAlpha(p)));
   } else {
    gdImageSetPixel(im, x, y, im->tileColorMap[p]);
   }
  }
 }
}
