
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct bounds {int max; int min; } ;


 int vec3_mul (int *,int *,struct vec3 const*) ;

void bounds_scale(struct bounds *dst, const struct bounds *b,
    const struct vec3 *v)
{
 vec3_mul(&dst->min, &b->min, v);
 vec3_mul(&dst->max, &b->max, v);
}
