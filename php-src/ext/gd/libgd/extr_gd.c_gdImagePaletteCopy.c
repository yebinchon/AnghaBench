
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_7__ {int sy; int sx; int colorsTotal; int* open; int * alpha; int * green; int * blue; int * red; scalar_t__ trueColor; } ;


 int gdImageColorClosestAlpha (TYPE_1__*,int ,int ,int ,int ) ;
 int gdImageGetPixel (TYPE_1__*,int,int) ;
 int gdImageSetPixel (TYPE_1__*,int,int,int) ;

void gdImagePaletteCopy (gdImagePtr to, gdImagePtr from)
{
 int i;
 int x, y, p;
 int xlate[256];
 if (to->trueColor || from->trueColor) {
  return;
 }

 for (i = 0; i < 256; i++) {
  xlate[i] = -1;
 }

 for (y = 0; y < to->sy; y++) {
  for (x = 0; x < to->sx; x++) {
   p = gdImageGetPixel(to, x, y);
   if (xlate[p] == -1) {

    xlate[p] = gdImageColorClosestAlpha (from, to->red[p], to->green[p], to->blue[p], to->alpha[p]);
   }
   gdImageSetPixel(to, x, y, xlate[p]);
  }
 }

 for (i = 0; i < from->colorsTotal; i++) {
  to->red[i] = from->red[i];
  to->blue[i] = from->blue[i];
  to->green[i] = from->green[i];
  to->alpha[i] = from->alpha[i];
  to->open[i] = 0;
 }

 for (i = from->colorsTotal; i < to->colorsTotal; i++) {
  to->open[i] = 1;
 }

 to->colorsTotal = from->colorsTotal;
}
