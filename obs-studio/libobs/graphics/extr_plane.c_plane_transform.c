
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct plane {struct vec3 dir; scalar_t__ dist; } ;
struct matrix4 {int dummy; } ;


 scalar_t__ vec3_dot (struct vec3*,struct vec3*) ;
 int vec3_norm (struct vec3*,struct vec3*) ;
 int vec3_transform (struct vec3*,struct vec3*,struct matrix4 const*) ;
 int vec3_zero (struct vec3*) ;

void plane_transform(struct plane *dst, const struct plane *p,
       const struct matrix4 *m)
{
 struct vec3 temp;

 vec3_zero(&temp);

 vec3_transform(&dst->dir, &p->dir, m);
 vec3_norm(&dst->dir, &dst->dir);

 vec3_transform(&temp, &temp, m);
 dst->dist = p->dist - vec3_dot(&dst->dir, &temp);
}
