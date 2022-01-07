
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct bounds {int min; int max; } ;


 int vec3_abs (struct vec3*,struct vec3 const*) ;
 float vec3_dot (struct vec3*,struct vec3*) ;
 int vec3_sub (struct vec3*,int *,int *) ;

__attribute__((used)) static inline float vec3or_offset_len(const struct bounds *b,
          const struct vec3 *v)
{
 struct vec3 temp1, temp2;
 vec3_sub(&temp1, &b->max, &b->min);
 vec3_abs(&temp2, v);
 return vec3_dot(&temp1, &temp2);
}
