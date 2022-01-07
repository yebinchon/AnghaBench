
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int width; int height; } ;
typedef TYPE_1__ gdRect ;
typedef int * gdImagePtr ;







 int gdGuessBackgroundColorFromCorners (int *,int*) ;
 int gdImageColorClosestAlpha (int *,int,int,int,int ) ;
 int * gdImageCrop (int *,TYPE_1__*) ;
 int gdImageGetPixel (int *,int,int) ;
 int gdImageGetTransparent (int *) ;
 int gdImageSX (int *) ;
 int gdImageSY (int *) ;

gdImagePtr gdImageCropAuto(gdImagePtr im, const unsigned int mode)
{
 const int width = gdImageSX(im);
 const int height = gdImageSY(im);

 int x,y;
 int color, match;
 gdRect crop;

 crop.x = 0;
 crop.y = 0;
 crop.width = 0;
 crop.height = 0;

 switch (mode) {
  case 129:
   color = gdImageGetTransparent(im);
   break;

  case 132:
   color = gdImageColorClosestAlpha(im, 0, 0, 0, 0);
   break;

  case 128:
   color = gdImageColorClosestAlpha(im, 255, 255, 255, 0);
   break;

  case 130:
   gdGuessBackgroundColorFromCorners(im, &color);
   break;

  case 131:
  default:
   color = gdImageGetTransparent(im);
   break;
 }





 match = 1;
 for (y = 0; match && y < height; y++) {
  for (x = 0; match && x < width; x++) {
   int c2 = gdImageGetPixel(im, x, y);
   match = (color == c2);
  }
 }


 if (match) {
  return ((void*)0);
 }

 crop.y = y - 1;

 match = 1;
 for (y = height - 1; match && y >= 0; y--) {
  for (x = 0; match && x < width; x++) {
   match = (color == gdImageGetPixel(im, x,y));
  }
 }
 crop.height = y - crop.y + 2;

 match = 1;
 for (x = 0; match && x < width; x++) {
  for (y = 0; match && y < crop.y + crop.height; y++) {
   match = (color == gdImageGetPixel(im, x,y));
  }
 }
 crop.x = x - 1;

 match = 1;
 for (x = width - 1; match && x >= 0; x--) {
  for (y = 0; match && y < crop.y + crop.height; y++) {
   match = (color == gdImageGetPixel(im, x,y));
  }
 }
 crop.width = x - crop.x + 2;

 return gdImageCrop(im, &crop);
}
