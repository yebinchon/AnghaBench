
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double x; double y; } ;
typedef TYPE_1__ Point ;



__attribute__((used)) static int
getSide(double coord, bool isX, Point *tst)
{
 double tstcoord = (isX) ? tst->x : tst->y;

 if (coord == tstcoord)
  return 0;
 else if (coord > tstcoord)
  return 1;
 else
  return -1;
}
