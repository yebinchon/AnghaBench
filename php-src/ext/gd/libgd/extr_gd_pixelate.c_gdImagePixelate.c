
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_11__ {int sy; int sx; } ;




 int gdImageAlpha (TYPE_1__*,int) ;
 int gdImageBlue (TYPE_1__*,int) ;
 int gdImageBoundsSafe (TYPE_1__*,int,int) ;
 int gdImageColorResolveAlpha (TYPE_1__*,int,int,int,int) ;
 int gdImageFilledRectangle (TYPE_1__*,int,int,int,int,int) ;
 int gdImageGetPixel (TYPE_1__*,int,int) ;
 int gdImageGreen (TYPE_1__*,int) ;
 int gdImageRed (TYPE_1__*,int) ;

int gdImagePixelate(gdImagePtr im, int block_size, const unsigned int mode)
{
 int x, y;

 if (block_size <= 0) {
  return 0;
 } else if (block_size == 1) {
  return 1;
 }
 switch (mode) {
 case 128:
  for (y = 0; y < im->sy; y += block_size) {
   for (x = 0; x < im->sx; x += block_size) {
    if (gdImageBoundsSafe(im, x, y)) {
     int c = gdImageGetPixel(im, x, y);
     gdImageFilledRectangle(im, x, y, x + block_size - 1, y + block_size - 1, c);
    }
   }
  }
  break;
 case 129:
  for (y = 0; y < im->sy; y += block_size) {
   for (x = 0; x < im->sx; x += block_size) {
    int a, r, g, b, c;
    int total;
    int cx, cy;

    a = r = g = b = c = total = 0;

    for (cy = 0; cy < block_size; cy++) {
     for (cx = 0; cx < block_size; cx++) {
      if (!gdImageBoundsSafe(im, x + cx, y + cy)) {
       continue;
      }
      c = gdImageGetPixel(im, x + cx, y + cy);
      a += gdImageAlpha(im, c);
      r += gdImageRed(im, c);
      g += gdImageGreen(im, c);
      b += gdImageBlue(im, c);
      total++;
     }
    }

    if (total > 0) {
     c = gdImageColorResolveAlpha(im, r / total, g / total, b / total, a / total);
     gdImageFilledRectangle(im, x, y, x + block_size - 1, y + block_size - 1, c);
    }
   }
  }
  break;
 default:
  return 0;
 }
 return 1;
}
