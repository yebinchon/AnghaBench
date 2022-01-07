
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix3 {int t; int z; int y; int x; } ;


 int vec3_copy (int *,int *) ;

__attribute__((used)) static inline void matrix3_copy(struct matrix3 *dst, const struct matrix3 *m)
{
 vec3_copy(&dst->x, &m->x);
 vec3_copy(&dst->y, &m->y);
 vec3_copy(&dst->z, &m->z);
 vec3_copy(&dst->t, &m->t);
}
