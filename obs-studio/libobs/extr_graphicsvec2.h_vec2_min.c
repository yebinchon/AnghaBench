
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {scalar_t__ x; scalar_t__ y; } ;



__attribute__((used)) static inline void vec2_min(struct vec2 *dst, const struct vec2 *v,
       const struct vec2 *min_v)
{
 if (v->x < min_v->x)
  dst->x = min_v->x;
 if (v->y < min_v->y)
  dst->y = min_v->y;
}
