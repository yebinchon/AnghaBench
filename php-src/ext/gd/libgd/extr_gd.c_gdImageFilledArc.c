
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ gdPoint ;
typedef int gdImagePtr ;


 int gdChord ;
 scalar_t__* gdCosT ;
 int gdEdged ;
 int gdImageFilledPolygon (int ,TYPE_1__*,int,int) ;
 int gdImageLine (int ,int,int,int,int,int) ;
 int gdNoFill ;
 scalar_t__* gdSinT ;

void gdImageFilledArc (gdImagePtr im, int cx, int cy, int w, int h, int s, int e, int color, int style)
{
 gdPoint pts[363];
 int i, pti;
 int lx = 0, ly = 0;
 int fx = 0, fy = 0;
 int startx = -1, starty = -1, endx = -1, endy = -1;

    if ((s % 360) == (e % 360)) {
  s = 0; e = 360;
 } else {
  if (s > 360) {
   s = s % 360;
  }

  if (e > 360) {
   e = e % 360;
  }

  while (s < 0) {
   s += 360;
  }

  while (e < s) {
   e += 360;
  }
  if (s == e) {
   s = 0; e = 360;
  }
 }

 for (i = s, pti = 1; i <= e; i++, pti++) {
  int x, y;
  x = endx = ((long) gdCosT[i % 360] * (long) w / (2 * 1024)) + cx;
  y = endy = ((long) gdSinT[i % 360] * (long) h / (2 * 1024)) + cy;
  if (i != s) {
   if (!(style & gdChord)) {
    if (style & gdNoFill) {
     gdImageLine(im, lx, ly, x, y, color);
    } else {
     if (y == ly) {
      pti--;
      if (((i > 270 || i < 90) && x > lx) || ((i > 90 && i < 270) && x < lx)) {


       pts[pti].x = x;
      }
     } else {
      pts[pti].x = x;
      pts[pti].y = y;
     }
      }
   }
  } else {
   fx = x;
   fy = y;
   if (!(style & (gdChord | gdNoFill))) {
    pts[0].x = cx;
    pts[0].y = cy;
    pts[pti].x = startx = x;
    pts[pti].y = starty = y;
   }
  }
  lx = x;
  ly = y;
 }
 if (style & gdChord) {
  if (style & gdNoFill) {
   if (style & gdEdged) {
    gdImageLine(im, cx, cy, lx, ly, color);
    gdImageLine(im, cx, cy, fx, fy, color);
   }
   gdImageLine(im, fx, fy, lx, ly, color);
  } else {
   pts[0].x = fx;
   pts[0].y = fy;
   pts[1].x = lx;
   pts[1].y = ly;
   pts[2].x = cx;
   pts[2].y = cy;
   gdImageFilledPolygon(im, pts, 3, color);
  }
 } else {
  if (style & gdNoFill) {
   if (style & gdEdged) {
    gdImageLine(im, cx, cy, lx, ly, color);
    gdImageLine(im, cx, cy, fx, fy, color);
   }
  } else {
   if (e - s < 360) {
    if (pts[1].x != startx && pts[1].y == starty) {

     for (i = pti; i > 1; i--) {
      pts[i].x = pts[i-1].x;
      pts[i].y = pts[i-1].y;
     }
     pts[1].x = startx;
     pts[1].y = starty;
     pti++;
    }
    if (pts[pti-1].x != endx && pts[pti-1].y == endy) {

     pts[pti].x = endx;
     pts[pti].y = endy;
     pti++;
    }
   }
   pts[pti].x = cx;
   pts[pti].y = cy;
   gdImageFilledPolygon(im, pts, pti+1, color);
  }
 }
}
