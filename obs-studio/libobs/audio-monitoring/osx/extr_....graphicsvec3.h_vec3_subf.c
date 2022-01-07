
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float w; int m; } ;


 int _mm_set1_ps (float) ;
 int _mm_sub_ps (int ,int ) ;

__attribute__((used)) static inline void vec3_subf(struct vec3 *dst, const struct vec3 *v, float f)
{
 dst->m = _mm_sub_ps(v->m, _mm_set1_ps(f));
 dst->w = 0.0f;
}
