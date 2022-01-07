
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bounds {int max; int min; } ;


 int vec3_copy (int *,int *) ;

__attribute__((used)) static inline void bounds_copy(struct bounds *dst, const struct bounds *b)
{
 vec3_copy(&dst->min, &b->min);
 vec3_copy(&dst->max, &b->max);
}
