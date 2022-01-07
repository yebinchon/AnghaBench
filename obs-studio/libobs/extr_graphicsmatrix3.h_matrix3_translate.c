
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct matrix3 {int t; } ;


 int vec3_sub (int *,int *,struct vec3 const*) ;

__attribute__((used)) static inline void matrix3_translate(struct matrix3 *dst,
         const struct matrix3 *m,
         const struct vec3 *v)
{
 vec3_sub(&dst->t, &m->t, v);
}
