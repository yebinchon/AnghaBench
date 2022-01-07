
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int colorsTotal; int * blue; int * green; int * red; scalar_t__* open; scalar_t__ trueColor; } ;


 float HWB_Diff (int ,int ,int ,int,int,int) ;
 int gdTrueColor (int,int,int) ;

int gdImageColorClosestHWB (gdImagePtr im, int r, int g, int b)
{
 int i;

 int ct = (-1);
 int first = 1;
 float mindist = 0;
 if (im->trueColor) {
  return gdTrueColor(r, g, b);
 }
 for (i = 0; i < im->colorsTotal; i++) {
  float dist;
  if (im->open[i]) {
   continue;
  }
  dist = HWB_Diff(im->red[i], im->green[i], im->blue[i], r, g, b);
  if (first || (dist < mindist)) {
   mindist = dist;
   ct = i;
   first = 0;
  }
 }
 return ct;
}
