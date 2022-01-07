
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {void* w; void* z; void* y; void* x; } ;


 void* fabsf (void*) ;

__attribute__((used)) static inline void vec4_abs(struct vec4 *dst, const struct vec4 *v)
{
 dst->x = fabsf(v->x);
 dst->y = fabsf(v->y);
 dst->z = fabsf(v->z);
 dst->w = fabsf(v->w);
}
