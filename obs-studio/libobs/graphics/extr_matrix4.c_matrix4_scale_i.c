
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float x; float y; float z; } ;
struct matrix4 {int t; int z; int y; int x; } ;


 int matrix4_mul (struct matrix4*,struct matrix4*,struct matrix4 const*) ;
 int vec4_set (int *,float,float,float,float) ;

void matrix4_scale_i(struct matrix4 *dst, const struct vec3 *v,
       const struct matrix4 *m)
{
 struct matrix4 temp;
 vec4_set(&temp.x, v->x, 0.0f, 0.0f, 0.0f);
 vec4_set(&temp.y, 0.0f, v->y, 0.0f, 0.0f);
 vec4_set(&temp.z, 0.0f, 0.0f, v->z, 0.0f);
 vec4_set(&temp.t, 0.0f, 0.0f, 0.0f, 1.0f);
 matrix4_mul(dst, &temp, m);
}
