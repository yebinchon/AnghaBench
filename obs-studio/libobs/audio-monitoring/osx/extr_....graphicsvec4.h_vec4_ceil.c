
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {void* w; void* z; void* y; void* x; } ;


 void* ceilf (void*) ;

__attribute__((used)) static inline void vec4_ceil(struct vec4 *dst, const struct vec4 *v)
{
 dst->x = ceilf(v->x);
 dst->y = ceilf(v->y);
 dst->z = ceilf(v->z);
 dst->w = ceilf(v->w);
}
