
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int dummy; } ;
struct matrix4 {int t; int z; int y; int x; } ;


 int matrix4_mul (struct matrix4*,struct matrix4*,struct matrix4 const*) ;
 int vec4_copy (int *,struct vec4 const*) ;
 int vec4_set (int *,float,float,float,float) ;

void matrix4_translate4v_i(struct matrix4 *dst, const struct vec4 *v,
      const struct matrix4 *m)
{
 struct matrix4 temp;
 vec4_set(&temp.x, 1.0f, 0.0f, 0.0f, 0.0f);
 vec4_set(&temp.y, 0.0f, 1.0f, 0.0f, 0.0f);
 vec4_set(&temp.z, 0.0f, 0.0f, 1.0f, 0.0f);
 vec4_copy(&temp.t, v);

 matrix4_mul(dst, &temp, m);
}
