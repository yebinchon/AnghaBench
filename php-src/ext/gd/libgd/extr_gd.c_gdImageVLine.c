
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_5__ {int thick; } ;


 int gdImageFilledRectangle (TYPE_1__*,int,int,int,int,int) ;
 int gdImageSetPixel (TYPE_1__*,int,int,int) ;

__attribute__((used)) static void gdImageVLine(gdImagePtr im, int x, int y1, int y2, int col)
{
 if (im->thick > 1) {
  int thickhalf = im->thick >> 1;
  gdImageFilledRectangle(im, x - thickhalf, y1, x + im->thick - thickhalf - 1, y2, col);
 } else {
  if (y2 < y1) {
   int t = y1;
   y1 = y2;
   y2 = t;
  }

  for (;y1 <= y2; y1++) {
   gdImageSetPixel(im, x, y1, col);
  }
 }
 return;
}
