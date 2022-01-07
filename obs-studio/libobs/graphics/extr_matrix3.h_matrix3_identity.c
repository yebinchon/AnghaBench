
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float x; float y; float z; } ;
struct matrix3 {TYPE_1__ z; TYPE_1__ y; TYPE_1__ x; TYPE_1__ t; } ;


 int vec3_zero (TYPE_1__*) ;

__attribute__((used)) static inline void matrix3_identity(struct matrix3 *dst)
{
 vec3_zero(&dst->x);
 vec3_zero(&dst->y);
 vec3_zero(&dst->z);
 vec3_zero(&dst->t);
 dst->x.x = dst->y.y = dst->z.z = 1.0f;
}
