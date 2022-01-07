
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float w; void* z; void* y; void* x; } ;


 void* fabsf (void*) ;

__attribute__((used)) static inline void vec3_abs(struct vec3 *dst, const struct vec3 *v)
{
 dst->x = fabsf(v->x);
 dst->y = fabsf(v->y);
 dst->z = fabsf(v->z);
 dst->w = 0.0f;
}
