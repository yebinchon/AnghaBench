
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float x; float y; float z; float w; } ;
struct matrix4 {TYPE_1__ t; TYPE_1__ z; TYPE_1__ y; TYPE_1__ x; } ;


 int vec4_zero (TYPE_1__*) ;

__attribute__((used)) static inline void matrix4_identity(struct matrix4 *dst)
{
 vec4_zero(&dst->x);
 vec4_zero(&dst->y);
 vec4_zero(&dst->z);
 vec4_zero(&dst->t);
 dst->x.x = 1.0f;
 dst->y.y = 1.0f;
 dst->z.z = 1.0f;
 dst->t.w = 1.0f;
}
