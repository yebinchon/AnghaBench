
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_12__ {scalar_t__ trueColor; } ;
struct TYPE_11__ {TYPE_3__* tile; scalar_t__ trueColor; } ;


 int gdImageAlpha (TYPE_3__*,int) ;
 int gdImageBlue (TYPE_3__*,int) ;
 int gdImageColorResolveAlpha (TYPE_1__*,int ,int ,int ,int ) ;
 int gdImageGetPixel (TYPE_3__*,int,int) ;
 int gdImageGreen (TYPE_3__*,int) ;
 int gdImageRed (TYPE_3__*,int) ;
 int gdImageSX (TYPE_3__*) ;
 int gdImageSY (TYPE_3__*) ;
 int gdTrueColorAlpha (int ,int ,int ,int ) ;
 int gdTrueColorGetAlpha (int) ;
 int gdTrueColorGetBlue (int) ;
 int gdTrueColorGetGreen (int) ;
 int gdTrueColorGetRed (int) ;

__attribute__((used)) static int gdImageTileGet (gdImagePtr im, int x, int y)
{
 int srcx, srcy;
 int tileColor,p;
 if (!im->tile) {
  return -1;
 }
 srcx = x % gdImageSX(im->tile);
 srcy = y % gdImageSY(im->tile);
 p = gdImageGetPixel(im->tile, srcx, srcy);

 if (im->trueColor) {
  if (im->tile->trueColor) {
   tileColor = p;
  } else {
   tileColor = gdTrueColorAlpha( gdImageRed(im->tile,p), gdImageGreen(im->tile,p), gdImageBlue (im->tile,p), gdImageAlpha (im->tile,p));
  }
 } else {
  if (im->tile->trueColor) {
   tileColor = gdImageColorResolveAlpha(im, gdTrueColorGetRed (p), gdTrueColorGetGreen (p), gdTrueColorGetBlue (p), gdTrueColorGetAlpha (p));
  } else {
   tileColor = p;
   tileColor = gdImageColorResolveAlpha(im, gdImageRed (im->tile,p), gdImageGreen (im->tile,p), gdImageBlue (im->tile,p), gdImageAlpha (im->tile,p));
  }
 }
 return tileColor;
}
