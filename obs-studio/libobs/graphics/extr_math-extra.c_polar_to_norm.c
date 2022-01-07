
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float x; float y; float z; } ;
struct vec2 {int x; int y; } ;


 float cosf (int ) ;
 float sinf (int ) ;

void polar_to_norm(struct vec3 *dst, const struct vec2 *polar)
{
 float sinx = sinf(polar->x);

 dst->x = sinx * cosf(polar->y);
 dst->y = sinx * sinf(polar->y);
 dst->z = cosf(polar->x);
}
