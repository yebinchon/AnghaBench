
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bounds {int max; int min; } ;


 int vec3_zero (int *) ;

__attribute__((used)) static inline void bounds_zero(struct bounds *dst)
{
 vec3_zero(&dst->min);
 vec3_zero(&dst->max);
}
