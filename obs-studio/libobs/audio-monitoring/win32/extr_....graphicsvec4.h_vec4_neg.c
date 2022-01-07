
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int w; int z; int y; int x; } ;



__attribute__((used)) static inline void vec4_neg(struct vec4 *dst, const struct vec4 *v)
{
 dst->x = -v->x;
 dst->y = -v->y;
 dst->z = -v->z;
 dst->w = -v->w;
}
