
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int m; } ;


 int _mm_set_ps (float,float,float,float) ;

__attribute__((used)) static inline void vec3_set(struct vec3 *dst, float x, float y, float z)
{
 dst->m = _mm_set_ps(0.0f, z, y, x);
}
