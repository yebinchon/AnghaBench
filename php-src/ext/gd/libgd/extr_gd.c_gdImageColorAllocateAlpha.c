
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int colorsTotal; int* red; int* green; int* blue; int* alpha; scalar_t__* open; scalar_t__ trueColor; } ;


 int gdMaxColors ;
 int gdTrueColorAlpha (int,int,int,int) ;

int gdImageColorAllocateAlpha (gdImagePtr im, int r, int g, int b, int a)
{
 int i;
 int ct = (-1);
 if (im->trueColor) {
  return gdTrueColorAlpha(r, g, b, a);
 }
 for (i = 0; i < im->colorsTotal; i++) {
  if (im->open[i]) {
   ct = i;
   break;
  }
 }
 if (ct == (-1)) {
  ct = im->colorsTotal;
  if (ct == gdMaxColors) {
   return -1;
  }
  im->colorsTotal++;
 }
 im->red[ct] = r;
 im->green[ct] = g;
 im->blue[ct] = b;
 im->alpha[ct] = a;
 im->open[ct] = 0;

 return ct;
}
