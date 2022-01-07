
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdImageAlpha (int ,int const) ;
 int gdImageBlue (int ,int const) ;
 int gdImageColorClosestAlpha (int ,int,int,int,int) ;
 int gdImageGetPixel (int ,scalar_t__,scalar_t__) ;
 int gdImageGreen (int ,int const) ;
 int gdImageRed (int ,int const) ;
 scalar_t__ gdImageSX (int ) ;
 scalar_t__ gdImageSY (int ) ;

__attribute__((used)) static int gdGuessBackgroundColorFromCorners(gdImagePtr im, int *color)
{
 const int tl = gdImageGetPixel(im, 0, 0);
 const int tr = gdImageGetPixel(im, gdImageSX(im) - 1, 0);
 const int bl = gdImageGetPixel(im, 0, gdImageSY(im) -1);
 const int br = gdImageGetPixel(im, gdImageSX(im) - 1, gdImageSY(im) -1);

 if (tr == bl && tr == br) {
  *color = tr;
  return 3;
 } else if (tl == bl && tl == br) {
  *color = tl;
  return 3;
 } else if (tl == tr && tl == br) {
  *color = tl;
  return 3;
 } else if (tl == tr && tl == bl) {
  *color = tl;
  return 3;
 } else if (tl == tr || tl == bl || tl == br) {
  *color = tl;
  return 2;
 } else if (tr == bl || tr == br) {
  *color = tr;
  return 2;
 } else if (br == bl) {
  *color = bl;
  return 2;
 } else {
  register int r,b,g,a;

  r = (int)(0.5f + (gdImageRed(im, tl) + gdImageRed(im, tr) + gdImageRed(im, bl) + gdImageRed(im, br)) / 4);
  g = (int)(0.5f + (gdImageGreen(im, tl) + gdImageGreen(im, tr) + gdImageGreen(im, bl) + gdImageGreen(im, br)) / 4);
  b = (int)(0.5f + (gdImageBlue(im, tl) + gdImageBlue(im, tr) + gdImageBlue(im, bl) + gdImageBlue(im, br)) / 4);
  a = (int)(0.5f + (gdImageAlpha(im, tl) + gdImageAlpha(im, tr) + gdImageAlpha(im, bl) + gdImageAlpha(im, br)) / 4);
  *color = gdImageColorClosestAlpha(im, r, g, b, a);
  return 0;
 }
}
