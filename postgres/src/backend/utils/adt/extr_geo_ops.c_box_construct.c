
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {int y; int x; } ;
struct TYPE_11__ {TYPE_2__ low; TYPE_1__ high; } ;
struct TYPE_10__ {int y; int x; } ;
typedef TYPE_3__ Point ;
typedef TYPE_4__ BOX ;


 scalar_t__ float8_gt (int ,int ) ;

__attribute__((used)) static inline void
box_construct(BOX *result, Point *pt1, Point *pt2)
{
 if (float8_gt(pt1->x, pt2->x))
 {
  result->high.x = pt1->x;
  result->low.x = pt2->x;
 }
 else
 {
  result->high.x = pt2->x;
  result->low.x = pt1->x;
 }
 if (float8_gt(pt1->y, pt2->y))
 {
  result->high.y = pt1->y;
  result->low.y = pt2->y;
 }
 else
 {
  result->high.y = pt2->y;
  result->low.y = pt1->y;
 }
}
