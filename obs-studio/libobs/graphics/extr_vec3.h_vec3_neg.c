
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float w; int z; int y; int x; } ;



__attribute__((used)) static inline void vec3_neg(struct vec3 *dst, const struct vec3 *v)
{
 dst->x = -v->x;
 dst->y = -v->y;
 dst->z = -v->z;
 dst->w = 0.0f;
}
