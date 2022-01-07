
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int y; int z; int x; } ;
struct vec2 {int y; int x; } ;


 int asinf (int ) ;
 int atan2f (int ,int ) ;

void norm_to_polar(struct vec2 *dst, const struct vec3 *norm)
{
 dst->x = atan2f(norm->x, norm->z);
 dst->y = asinf(norm->y);
}
