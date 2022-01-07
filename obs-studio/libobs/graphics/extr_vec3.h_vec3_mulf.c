
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int m; } ;


 int _mm_mul_ps (int ,int ) ;
 int _mm_set1_ps (float) ;

__attribute__((used)) static inline void vec3_mulf(struct vec3 *dst, const struct vec3 *v, float f)
{
 dst->m = _mm_mul_ps(v->m, _mm_set1_ps(f));
}
