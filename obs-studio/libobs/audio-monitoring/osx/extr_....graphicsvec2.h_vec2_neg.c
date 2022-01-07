
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int y; int x; } ;


 int vec2_set (struct vec2*,int ,int ) ;

__attribute__((used)) static inline void vec2_neg(struct vec2 *dst, const struct vec2 *v)
{
 vec2_set(dst, -v->x, -v->y);
}
