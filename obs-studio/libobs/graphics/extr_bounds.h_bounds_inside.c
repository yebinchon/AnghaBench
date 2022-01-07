
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ x; scalar_t__ y; scalar_t__ z; } ;
struct TYPE_3__ {scalar_t__ x; scalar_t__ y; scalar_t__ z; } ;
struct bounds {TYPE_2__ max; TYPE_1__ min; } ;



__attribute__((used)) static inline bool bounds_inside(const struct bounds *b,
     const struct bounds *test)
{
 return test->min.x >= b->min.x && test->min.y >= b->min.y &&
        test->min.z >= b->min.z && test->max.x <= b->max.x &&
        test->max.y <= b->max.y && test->max.z <= b->max.z;
}
