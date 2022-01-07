
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; int x; } ;
typedef TYPE_1__ Point ;


 scalar_t__ palloc (int) ;

Point *
makepoint(Point *pointx, Point *pointy)
{
 Point *new_point = (Point *) palloc(sizeof(Point));

 new_point->x = pointx->x;
 new_point->y = pointy->y;

 return new_point;
}
