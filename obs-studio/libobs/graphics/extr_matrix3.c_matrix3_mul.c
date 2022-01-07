
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct matrix3 {int t; int z; int y; int x; } const matrix3 ;


 int matrix3_copy (struct matrix3 const*,struct matrix3 const*) ;
 int vec3_rotate (int *,int *,struct matrix3 const*) ;
 int vec3_transform3x4 (int *,int *,struct matrix3 const*) ;

void matrix3_mul(struct matrix3 *dst, const struct matrix3 *m1,
   const struct matrix3 *m2)
{
 if (dst == m2) {
  struct matrix3 temp;
  vec3_rotate(&temp.x, &m1->x, m2);
  vec3_rotate(&temp.y, &m1->y, m2);
  vec3_rotate(&temp.z, &m1->z, m2);
  vec3_transform3x4(&temp.t, &m1->t, m2);
  matrix3_copy(dst, &temp);
 } else {
  vec3_rotate(&dst->x, &m1->x, m2);
  vec3_rotate(&dst->y, &m1->y, m2);
  vec3_rotate(&dst->z, &m1->z, m2);
  vec3_transform3x4(&dst->t, &m1->t, m2);
 }
}
