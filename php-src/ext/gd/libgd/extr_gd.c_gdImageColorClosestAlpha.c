
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int colorsTotal; int* red; int* green; int* blue; int* alpha; scalar_t__* open; scalar_t__ trueColor; } ;


 int gdTrueColorAlpha (int,int,int,int) ;

int gdImageColorClosestAlpha (gdImagePtr im, int r, int g, int b, int a)
{
 int i;
 long rd, gd, bd, ad;
 int ct = (-1);
 int first = 1;
 long mindist = 0;

 if (im->trueColor) {
  return gdTrueColorAlpha(r, g, b, a);
 }
 for (i = 0; i < im->colorsTotal; i++) {
  long dist;
  if (im->open[i]) {
   continue;
  }
  rd = im->red[i] - r;
  gd = im->green[i] - g;
  bd = im->blue[i] - b;

  ad = im->alpha[i] - a;
  dist = rd * rd + gd * gd + bd * bd + ad * ad;
  if (first || (dist < mindist)) {
   mindist = dist;
   ct = i;
   first = 0;
  }
 }
 return ct;
}
