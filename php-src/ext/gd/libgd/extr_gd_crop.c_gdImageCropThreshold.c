
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int width; int height; } ;
typedef TYPE_1__ gdRect ;
typedef int * gdImagePtr ;


 scalar_t__ gdColorMatch (int *,unsigned int const,int ,float const) ;
 unsigned int const gdImageColorsTotal (int *) ;
 int * gdImageCrop (int *,TYPE_1__*) ;
 int gdImageGetPixel (int *,int,int) ;
 int gdImageSX (int *) ;
 int gdImageSY (int *) ;
 int gdImageTrueColor (int *) ;

gdImagePtr gdImageCropThreshold(gdImagePtr im, const unsigned int color, const float threshold)
{
 const int width = gdImageSX(im);
 const int height = gdImageSY(im);

 int x,y;
 int match;
 gdRect crop;

 crop.x = 0;
 crop.y = 0;
 crop.width = 0;
 crop.height = 0;


 if (threshold > 100.0) {
  return ((void*)0);
 }

 if (!gdImageTrueColor(im) && color >= gdImageColorsTotal(im)) {
  return ((void*)0);
 }





 match = 1;
 for (y = 0; match && y < height; y++) {
  for (x = 0; match && x < width; x++) {
   match = (gdColorMatch(im, color, gdImageGetPixel(im, x,y), threshold)) > 0;
  }
 }


 if (match) {
  return ((void*)0);
 }

 crop.y = y - 1;

 match = 1;
 for (y = height - 1; match && y >= 0; y--) {
  for (x = 0; match && x < width; x++) {
   match = (gdColorMatch(im, color, gdImageGetPixel(im, x, y), threshold)) > 0;
  }
 }
 crop.height = y - crop.y + 2;

 match = 1;
 for (x = 0; match && x < width; x++) {
  for (y = 0; match && y < crop.y + crop.height; y++) {
   match = (gdColorMatch(im, color, gdImageGetPixel(im, x,y), threshold)) > 0;
  }
 }
 crop.x = x - 1;

 match = 1;
 for (x = width - 1; match && x >= 0; x--) {
  for (y = 0; match && y < crop.y + crop.height; y++) {
   match = (gdColorMatch(im, color, gdImageGetPixel(im, x,y), threshold)) > 0;
  }
 }
 crop.width = x - crop.x + 2;

 return gdImageCrop(im, &crop);
}
