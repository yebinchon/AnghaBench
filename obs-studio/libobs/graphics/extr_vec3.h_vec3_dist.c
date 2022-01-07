
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;


 float sqrtf (float) ;
 float vec3_dot (struct vec3*,struct vec3*) ;
 int vec3_sub (struct vec3*,struct vec3 const*,struct vec3 const*) ;

__attribute__((used)) static inline float vec3_dist(const struct vec3 *v1, const struct vec3 *v2)
{
 struct vec3 temp;
 float dot_val;

 vec3_sub(&temp, v1, v2);
 dot_val = vec3_dot(&temp, &temp);
 return (dot_val > 0.0f) ? sqrtf(dot_val) : 0.0f;
}
