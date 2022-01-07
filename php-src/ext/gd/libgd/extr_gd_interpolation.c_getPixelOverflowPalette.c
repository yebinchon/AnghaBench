
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_4__ {int** pixels; int const transparent; } ;


 int colorIndex2RGBA (int const) ;
 scalar_t__ gdImageBoundsSafe (TYPE_1__*,int const,int const) ;
 int gdTrueColorAlpha (int ,int ,int ,int) ;

__attribute__((used)) static inline int getPixelOverflowPalette(gdImagePtr im, const int x, const int y, const int bgColor)
{
 if (gdImageBoundsSafe(im, x, y)) {
  const int c = im->pixels[y][x];
  if (c == im->transparent) {
   return bgColor == -1 ? gdTrueColorAlpha(0, 0, 0, 127) : bgColor;
  }
  return colorIndex2RGBA(c);
 } else {
  return bgColor;
 }
}
