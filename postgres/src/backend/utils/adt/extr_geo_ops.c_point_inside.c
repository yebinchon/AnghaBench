
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int float8 ;
struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ Point ;


 int Assert (int) ;
 int POINT_ON_POLYGON ;
 int float8_mi (int ,int ) ;
 int lseg_crossing (int ,int ,int ,int ) ;

__attribute__((used)) static int
point_inside(Point *p, int npts, Point *plist)
{
 float8 x0,
    y0;
 float8 prev_x,
    prev_y;
 int i = 0;
 float8 x,
    y;
 int cross,
    total_cross = 0;

 Assert(npts > 0);


 x0 = float8_mi(plist[0].x, p->x);
 y0 = float8_mi(plist[0].y, p->y);

 prev_x = x0;
 prev_y = y0;

 for (i = 1; i < npts; i++)
 {

  x = float8_mi(plist[i].x, p->x);
  y = float8_mi(plist[i].y, p->y);


  if ((cross = lseg_crossing(x, y, prev_x, prev_y)) == POINT_ON_POLYGON)
   return 2;
  total_cross += cross;

  prev_x = x;
  prev_y = y;
 }


 if ((cross = lseg_crossing(x0, y0, prev_x, prev_y)) == POINT_ON_POLYGON)
  return 2;
 total_cross += cross;

 if (total_cross != 0)
  return 1;
 return 0;
}
