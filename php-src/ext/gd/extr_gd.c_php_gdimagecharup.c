
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gdImagePtr ;
typedef TYPE_1__* gdFontPtr ;
struct TYPE_3__ {int offset; int nchars; int h; int w; scalar_t__* data; } ;


 int gdImageSetPixel (int ,int,int,int) ;

__attribute__((used)) static void php_gdimagecharup(gdImagePtr im, gdFontPtr f, int x, int y, int c, int color)
{
 int cx, cy, px, py, fline;
 cx = 0;
 cy = 0;

 if ((c < f->offset) || (c >= (f->offset + f->nchars))) {
  return;
 }

 fline = (c - f->offset) * f->h * f->w;
 for (py = y; (py > (y - f->w)); py--) {
  for (px = x; (px < (x + f->h)); px++) {
   if (f->data[fline + cy * f->w + cx]) {
    gdImageSetPixel(im, px, py, color);
   }
   cy++;
  }
  cy = 0;
  cx++;
 }
}
