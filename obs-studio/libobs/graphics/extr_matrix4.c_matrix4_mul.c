
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int * ptr; } ;
struct matrix4 {int dummy; } ;


 int matrix4_copy (struct matrix4*,struct matrix4*) ;
 int vec4_dot (struct vec4 const*,struct vec4*) ;
 int vec4_set (struct vec4*,float const,float const,float const,float const) ;

void matrix4_mul(struct matrix4 *dst, const struct matrix4 *m1,
   const struct matrix4 *m2)
{
 const struct vec4 *m1v = (const struct vec4 *)m1;
 const float *m2f = (const float *)m2;
 struct vec4 out[4];
 int i, j;

 for (i = 0; i < 4; i++) {
  for (j = 0; j < 4; j++) {
   struct vec4 temp;
   vec4_set(&temp, m2f[j], m2f[j + 4], m2f[j + 8],
     m2f[j + 12]);
   out[i].ptr[j] = vec4_dot(&m1v[i], &temp);
  }
 }

 matrix4_copy(dst, (struct matrix4 *)out);
}
