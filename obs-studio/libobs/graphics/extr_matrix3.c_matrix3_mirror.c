
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plane {int dir; } ;
struct matrix3 {int t; int z; int y; int x; } ;


 int vec3_mirror (int *,int *,struct plane const*) ;
 int vec3_mirrorv (int *,int *,int *) ;

void matrix3_mirror(struct matrix3 *dst, const struct matrix3 *m,
      const struct plane *p)
{
 vec3_mirrorv(&dst->x, &m->x, &p->dir);
 vec3_mirrorv(&dst->y, &m->y, &p->dir);
 vec3_mirrorv(&dst->z, &m->z, &p->dir);
 vec3_mirror(&dst->t, &m->t, p);
}
