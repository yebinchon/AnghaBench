
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int m; } ;


 int _mm_add_ps (int ,int ) ;
 int _mm_set1_ps (float) ;

__attribute__((used)) static inline void vec4_addf(struct vec4 *dst, const struct vec4 *v, float f)
{
 dst->m = _mm_add_ps(v->m, _mm_set1_ps(f));
}
