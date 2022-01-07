
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int m; } ;


 int _mm_set_ps (float,float,float,float) ;

__attribute__((used)) static inline void vec4_set(struct vec4 *dst, float x, float y, float z,
       float w)
{
 dst->m = _mm_set_ps(w, z, y, x);
}
