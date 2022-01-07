
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vec3 {int z; int y; int x; } ;
struct TYPE_3__ {int z; int y; int x; } ;
struct TYPE_4__ {int z; int y; int x; } ;
struct bounds {TYPE_1__ min; TYPE_2__ max; } ;



void bounds_get_point(struct vec3 *dst, const struct bounds *b, unsigned int i)
{
 if (i > 8)
  return;
 if (i > 3) {
  dst->x = b->max.x;
  i -= 4;
 } else {
  dst->x = b->min.x;
 }

 if (i > 1) {
  dst->y = b->max.y;
  i -= 2;
 } else {
  dst->y = b->min.y;
 }

 dst->z = (i == 1) ? b->max.z : b->min.z;
}
