
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int y; int x; } ;



__attribute__((used)) static inline void vec2_copy(struct vec2 *dst, const struct vec2 *v)
{
 dst->x = v->x;
 dst->y = v->y;
}
