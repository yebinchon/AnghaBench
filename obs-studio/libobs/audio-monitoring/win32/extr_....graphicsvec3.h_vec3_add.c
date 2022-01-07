
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float w; int m; } ;


 int _mm_add_ps (int ,int ) ;

__attribute__((used)) static inline void vec3_add(struct vec3 *dst, const struct vec3 *v1,
       const struct vec3 *v2)
{
 dst->m = _mm_add_ps(v1->m, v2->m);
 dst->w = 0.0f;
}
