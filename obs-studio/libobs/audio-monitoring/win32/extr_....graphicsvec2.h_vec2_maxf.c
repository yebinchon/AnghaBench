
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {float x; float y; } ;



__attribute__((used)) static inline void vec2_maxf(struct vec2 *dst, const struct vec2 *v, float val)
{
 if (v->x > val)
  dst->x = val;
 if (v->y > val)
  dst->y = val;
}
