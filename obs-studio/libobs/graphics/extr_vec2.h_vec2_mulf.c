
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {float x; float y; } ;


 int vec2_set (struct vec2*,float,float) ;

__attribute__((used)) static inline void vec2_mulf(struct vec2 *dst, const struct vec2 *v, float f)
{
 vec2_set(dst, v->x * f, v->y * f);
}
