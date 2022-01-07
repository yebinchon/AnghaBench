
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
typedef TYPE_1__ Point ;


 int float8_pl (int ,int ) ;
 int point_construct (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline void
point_add_point(Point *result, Point *pt1, Point *pt2)
{
 point_construct(result,
     float8_pl(pt1->x, pt2->x),
     float8_pl(pt1->y, pt2->y));
}
