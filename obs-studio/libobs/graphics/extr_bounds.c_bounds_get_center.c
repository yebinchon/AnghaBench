
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct bounds {int min; int max; } ;


 int vec3_add (struct vec3*,struct vec3*,int *) ;
 int vec3_mulf (struct vec3*,struct vec3*,float) ;
 int vec3_sub (struct vec3*,int *,int *) ;

void bounds_get_center(struct vec3 *dst, const struct bounds *b)
{
 vec3_sub(dst, &b->max, &b->min);
 vec3_mulf(dst, dst, 0.5f);
 vec3_add(dst, dst, &b->min);
}
