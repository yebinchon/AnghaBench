
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ Point ;


 double DBL_MAX ;
 scalar_t__ FPeq (int ,int ) ;
 double float8_div (int ,int ) ;
 int float8_mi (int ,int ) ;

__attribute__((used)) static inline float8
point_invsl(Point *pt1, Point *pt2)
{
 if (FPeq(pt1->x, pt2->x))
  return 0.0;
 if (FPeq(pt1->y, pt2->y))
  return DBL_MAX;
 return float8_div(float8_mi(pt1->x, pt2->x), float8_mi(pt2->y, pt1->y));
}
