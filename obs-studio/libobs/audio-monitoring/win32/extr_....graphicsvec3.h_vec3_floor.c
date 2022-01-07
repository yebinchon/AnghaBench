
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float w; void* z; void* y; void* x; } ;


 void* floorf (void*) ;

__attribute__((used)) static inline void vec3_floor(struct vec3 *dst, const struct vec3 *v)
{
 dst->x = floorf(v->x);
 dst->y = floorf(v->y);
 dst->z = floorf(v->z);
 dst->w = 0.0f;
}
