
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int float8 ;
struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ Point ;


 int HYPOT (int ,int ) ;
 int float8_mi (int ,int ) ;

__attribute__((used)) static inline float8
point_dt(Point *pt1, Point *pt2)
{
 return HYPOT(float8_mi(pt1->x, pt2->x), float8_mi(pt1->y, pt2->y));
}
