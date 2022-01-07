
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;


 float vec3_dot (struct vec3 const*,struct vec3 const*) ;
 int vec3_mulf (struct vec3*,struct vec3 const*,float) ;
 int vec3_sub (struct vec3*,struct vec3 const*,struct vec3*) ;

void vec3_mirrorv(struct vec3 *dst, const struct vec3 *v,
    const struct vec3 *vec)
{
 struct vec3 temp;
 vec3_mulf(&temp, vec, vec3_dot(v, vec) * 2.0f);
 vec3_sub(dst, v, &temp);
}
