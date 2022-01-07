
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float x; float y; float z; } ;


 int vec3_sub (struct vec3*,struct vec3 const*,struct vec3 const*) ;

__attribute__((used)) static inline bool vec3_close(const struct vec3 *v1, const struct vec3 *v2,
         float epsilon)
{
 struct vec3 test;
 vec3_sub(&test, v1, v2);
 return test.x < epsilon && test.y < epsilon && test.z < epsilon;
}
