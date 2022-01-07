
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {scalar_t__ y; scalar_t__ x; } ;


 int vec2_set (struct vec2*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vec2_add(struct vec2 *dst, const struct vec2 *v1,
       const struct vec2 *v2)
{
 vec2_set(dst, v1->x + v2->x, v1->y + v2->y);
}
