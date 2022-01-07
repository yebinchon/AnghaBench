
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int float8 ;
struct TYPE_6__ {int y; int x; } ;
typedef TYPE_1__ Point ;


 int float8_div (int ,int ) ;
 int float8_mi (int ,int ) ;
 int float8_mul (int ,int ) ;
 int float8_pl (int ,int ) ;
 int point_construct (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline void
point_div_point(Point *result, Point *pt1, Point *pt2)
{
 float8 div;

 div = float8_pl(float8_mul(pt2->x, pt2->x), float8_mul(pt2->y, pt2->y));

 point_construct(result,
     float8_div(float8_pl(float8_mul(pt1->x, pt2->x),
           float8_mul(pt1->y, pt2->y)), div),
     float8_div(float8_mi(float8_mul(pt1->y, pt2->x),
           float8_mul(pt1->x, pt2->y)), div));
}
