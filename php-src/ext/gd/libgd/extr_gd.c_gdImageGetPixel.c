
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_4__ {int** tpixels; int** pixels; scalar_t__ trueColor; } ;


 scalar_t__ gdImageBoundsSafe (TYPE_1__*,int,int) ;

int gdImageGetPixel (gdImagePtr im, int x, int y)
{
 if (gdImageBoundsSafe(im, x, y)) {
  if (im->trueColor) {
   return im->tpixels[y][x];
  } else {
   return im->pixels[y][x];
  }
 } else {
  return 0;
 }
}
