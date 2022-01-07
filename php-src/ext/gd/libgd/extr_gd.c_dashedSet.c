
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdDashSize ;
 int gdImageSetPixel (int ,int,int,int) ;

__attribute__((used)) static void dashedSet (gdImagePtr im, int x, int y, int color, int *onP, int *dashStepP, int wid, int vert)
{
 int dashStep = *dashStepP;
 int on = *onP;
 int w, wstart;

 dashStep++;
 if (dashStep == gdDashSize) {
  dashStep = 0;
  on = !on;
 }
 if (on) {
  if (vert) {
   wstart = y - wid / 2;
   for (w = wstart; w < wstart + wid; w++) {
    gdImageSetPixel(im, x, w, color);
   }
  } else {
   wstart = x - wid / 2;
   for (w = wstart; w < wstart + wid; w++) {
    gdImageSetPixel(im, w, y, color);
   }
  }
 }
 *dashStepP = dashStep;
 *onP = on;
}
