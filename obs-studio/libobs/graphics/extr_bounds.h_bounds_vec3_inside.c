
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vec3 {scalar_t__ x; scalar_t__ y; scalar_t__ z; } ;
struct TYPE_4__ {scalar_t__ x; scalar_t__ y; scalar_t__ z; } ;
struct TYPE_3__ {scalar_t__ x; scalar_t__ y; scalar_t__ z; } ;
struct bounds {TYPE_2__ max; TYPE_1__ min; } ;


 scalar_t__ EPSILON ;

__attribute__((used)) static inline bool bounds_vec3_inside(const struct bounds *b,
          const struct vec3 *v)
{
 return v->x >= (b->min.x - EPSILON) && v->x <= (b->max.x + EPSILON) &&
        v->y >= (b->min.y - EPSILON) && v->y <= (b->max.y + EPSILON) &&
        v->z >= (b->min.z - EPSILON) && v->z <= (b->max.z + EPSILON);
}
