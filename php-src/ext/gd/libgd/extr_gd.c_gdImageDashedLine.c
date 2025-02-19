
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_4__ {int thick; } ;


 int abs (int) ;
 int atan2 (int,int) ;
 int dashedSet (TYPE_1__*,int,int,int,int*,int*,int,int) ;
 double sin (int ) ;

void gdImageDashedLine (gdImagePtr im, int x1, int y1, int x2, int y2, int color)
{
 int dx, dy, incr1, incr2, d, x, y, xend, yend, xdirflag, ydirflag;
 int dashStep = 0;
 int on = 1;
 int wid;
 int vert;
 int thick = im->thick;

 dx = abs(x2 - x1);
 dy = abs(y2 - y1);
 if (dy <= dx) {



  double as = sin(atan2(dy, dx));
  if (as != 0) {
   wid = thick / as;
  } else {
   wid = 1;
  }
  vert = 1;

  d = 2 * dy - dx;
  incr1 = 2 * dy;
  incr2 = 2 * (dy - dx);
  if (x1 > x2) {
   x = x2;
   y = y2;
   ydirflag = (-1);
   xend = x1;
  } else {
   x = x1;
   y = y1;
   ydirflag = 1;
   xend = x2;
  }
  dashedSet(im, x, y, color, &on, &dashStep, wid, vert);
  if (((y2 - y1) * ydirflag) > 0) {
   while (x < xend) {
    x++;
    if (d < 0) {
     d += incr1;
    } else {
     y++;
     d += incr2;
    }
    dashedSet(im, x, y, color, &on, &dashStep, wid, vert);
   }
  } else {
   while (x < xend) {
    x++;
    if (d < 0) {
     d += incr1;
    } else {
     y--;
     d += incr2;
    }
    dashedSet(im, x, y, color, &on, &dashStep, wid, vert);
   }
  }
 } else {


  double as = sin (atan2 (dy, dx));
  if (as != 0) {
   wid = thick / as;
  } else {
   wid = 1;
  }
  vert = 0;

  d = 2 * dx - dy;
  incr1 = 2 * dx;
  incr2 = 2 * (dx - dy);
  if (y1 > y2) {
   y = y2;
   x = x2;
   yend = y1;
   xdirflag = (-1);
  } else {
   y = y1;
   x = x1;
   yend = y2;
   xdirflag = 1;
  }
  dashedSet(im, x, y, color, &on, &dashStep, wid, vert);
  if (((x2 - x1) * xdirflag) > 0) {
   while (y < yend) {
    y++;
    if (d < 0) {
     d += incr1;
    } else {
     x++;
     d += incr2;
    }
    dashedSet(im, x, y, color, &on, &dashStep, wid, vert);
   }
  } else {
   while (y < yend) {
    y++;
    if (d < 0) {
     d += incr1;
    } else {
     x--;
     d += incr2;
    }
    dashedSet(im, x, y, color, &on, &dashStep, wid, vert);
   }
  }
 }
}
