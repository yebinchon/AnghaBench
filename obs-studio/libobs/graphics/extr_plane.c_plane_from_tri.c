
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct plane {struct vec3 dir; int dist; } ;


 int vec3_cross (struct vec3*,struct vec3*,struct vec3*) ;
 int vec3_dot (struct vec3 const*,struct vec3*) ;
 int vec3_norm (struct vec3*,struct vec3*) ;
 int vec3_sub (struct vec3*,struct vec3 const*,struct vec3 const*) ;

void plane_from_tri(struct plane *dst, const struct vec3 *v1,
      const struct vec3 *v2, const struct vec3 *v3)
{
 struct vec3 temp;

 vec3_sub(&temp, v2, v1);
 vec3_sub(&dst->dir, v3, v1);
 vec3_cross(&dst->dir, &temp, &dst->dir);
 vec3_norm(&dst->dir, &dst->dir);
 dst->dist = vec3_dot(v1, &dst->dir);
}
