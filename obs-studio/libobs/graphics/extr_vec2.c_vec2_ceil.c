
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int y; int x; } ;


 int ceilf (int ) ;
 int vec2_set (struct vec2*,int ,int ) ;

void vec2_ceil(struct vec2 *dst, const struct vec2 *v)
{
 vec2_set(dst, ceilf(v->x), ceilf(v->y));
}
