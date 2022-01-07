
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int m; } ;


 int _mm_div_ps (int ,int ) ;

__attribute__((used)) static inline void vec4_div(struct vec4 *dst, const struct vec4 *v1,
       const struct vec4 *v2)
{
 dst->m = _mm_div_ps(v1->m, v2->m);
}
