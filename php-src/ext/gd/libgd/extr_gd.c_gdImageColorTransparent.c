
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int colorsTotal; int transparent; int * alpha; int trueColor; } ;


 int gdAlphaOpaque ;
 int gdAlphaTransparent ;

void gdImageColorTransparent (gdImagePtr im, int color)
{
 if (color < 0) {
  return;
 }
 if (!im->trueColor) {
  if((color >= im->colorsTotal)) {
   return;
  }

  if (im->transparent != -1) {
   im->alpha[im->transparent] = gdAlphaOpaque;
  }
  im->alpha[color] = gdAlphaTransparent;
 }
 im->transparent = color;
}
