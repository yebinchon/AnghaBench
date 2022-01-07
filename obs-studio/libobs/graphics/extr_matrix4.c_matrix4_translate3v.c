
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct matrix4 {int t; int z; int y; int x; } ;


 int matrix4_mul (struct matrix4*,struct matrix4 const*,struct matrix4*) ;
 int vec4_from_vec3 (int *,struct vec3 const*) ;
 int vec4_set (int *,float,float,float,float) ;

void matrix4_translate3v(struct matrix4 *dst, const struct matrix4 *m,
    const struct vec3 *v)
{
 struct matrix4 temp;
 vec4_set(&temp.x, 1.0f, 0.0f, 0.0f, 0.0f);
 vec4_set(&temp.y, 0.0f, 1.0f, 0.0f, 0.0f);
 vec4_set(&temp.z, 0.0f, 0.0f, 1.0f, 0.0f);
 vec4_from_vec3(&temp.t, v);

 matrix4_mul(dst, m, &temp);
}
