
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct matrix3 {int t; int z; int y; int x; } ;


 int vec3_mirrorv (int *,int *,struct vec3 const*) ;

void matrix3_mirrorv(struct matrix3 *dst, const struct matrix3 *m,
       const struct vec3 *v)
{
 vec3_mirrorv(&dst->x, &m->x, v);
 vec3_mirrorv(&dst->y, &m->y, v);
 vec3_mirrorv(&dst->z, &m->z, v);
 vec3_mirrorv(&dst->t, &m->t, v);
}
