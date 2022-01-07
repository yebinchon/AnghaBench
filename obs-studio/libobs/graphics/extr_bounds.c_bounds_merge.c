
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bounds {int max; int min; } ;


 int vec3_max (int *,int *,int *) ;
 int vec3_min (int *,int *,int *) ;

void bounds_merge(struct bounds *dst, const struct bounds *b1,
    const struct bounds *b2)
{
 vec3_min(&dst->min, &b1->min, &b2->min);
 vec3_max(&dst->max, &b1->max, &b2->max);
}
