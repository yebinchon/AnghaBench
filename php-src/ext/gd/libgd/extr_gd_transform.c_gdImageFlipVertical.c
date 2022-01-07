
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int sy; int** tpixels; int sx; unsigned char** pixels; scalar_t__ trueColor; } ;



void gdImageFlipVertical(gdImagePtr im)
{
 register int x, y;

 if (im->trueColor) {
  for (y = 0; y < im->sy / 2; y++) {
   int *row_dst = im->tpixels[y];
   int *row_src = im->tpixels[im->sy - 1 - y];
   for (x = 0; x < im->sx; x++) {
    register int p;
    p = row_dst[x];
    row_dst[x] = im->tpixels[im->sy - 1 - y][x];
    row_src[x] = p;
   }
  }
 } else {
  unsigned char p;
  for (y = 0; y < im->sy / 2; y++) {
   for (x = 0; x < im->sx; x++) {
    p = im->pixels[y][x];
    im->pixels[y][x] = im->pixels[im->sy - 1 - y][x];
    im->pixels[im->sy - 1 - y][x] = p;
   }
  }
 }
 return;
}
