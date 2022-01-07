
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int dummy; } ;


 float sqrtf (float) ;
 float vec4_dot (struct vec4*,struct vec4*) ;
 int vec4_sub (struct vec4*,struct vec4 const*,struct vec4 const*) ;

__attribute__((used)) static inline float vec4_dist(const struct vec4 *v1, const struct vec4 *v2)
{
 struct vec4 temp;
 float dot_val;

 vec4_sub(&temp, v1, v2);
 dot_val = vec4_dot(&temp, &temp);
 return (dot_val > 0.0f) ? sqrtf(dot_val) : 0.0f;
}
