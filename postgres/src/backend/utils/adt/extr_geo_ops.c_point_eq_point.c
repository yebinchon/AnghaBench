
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ Point ;


 scalar_t__ FPeq (int ,int ) ;
 scalar_t__ float8_eq (int ,int ) ;

__attribute__((used)) static inline bool
point_eq_point(Point *pt1, Point *pt2)
{
 return ((FPeq(pt1->x, pt2->x) && FPeq(pt1->y, pt2->y)) ||
   (float8_eq(pt1->x, pt2->x) && float8_eq(pt1->y, pt2->y)));
}
