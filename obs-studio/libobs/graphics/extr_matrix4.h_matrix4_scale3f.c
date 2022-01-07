
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct matrix4 {int dummy; } ;


 int matrix4_scale (struct matrix4*,struct matrix4 const*,struct vec3*) ;
 int vec3_set (struct vec3*,float,float,float) ;

__attribute__((used)) static inline void matrix4_scale3f(struct matrix4 *dst, const struct matrix4 *m,
       float x, float y, float z)
{
 struct vec3 v;
 vec3_set(&v, x, y, z);
 matrix4_scale(dst, m, &v);
}
