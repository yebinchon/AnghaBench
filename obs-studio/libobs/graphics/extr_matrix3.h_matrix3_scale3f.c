
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct matrix3 {int dummy; } ;


 int matrix3_scale (struct matrix3*,struct matrix3 const*,struct vec3*) ;
 int vec3_set (struct vec3*,float,float,float) ;

__attribute__((used)) static inline void matrix3_scale3f(struct matrix3 *dst, const struct matrix3 *m,
       float x, float y, float z)
{
 struct vec3 v;
 vec3_set(&v, x, y, z);
 matrix3_scale(dst, m, &v);
}
