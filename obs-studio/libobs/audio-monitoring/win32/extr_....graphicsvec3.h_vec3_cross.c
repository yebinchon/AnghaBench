
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int m; } ;
typedef int __m128 ;


 int _MM_SHUFFLE (int,int,int,int) ;
 int _mm_mul_ps (int ,int ) ;
 int _mm_shuffle_ps (int ,int ,int ) ;
 int _mm_sub_ps (int ,int ) ;

__attribute__((used)) static inline void vec3_cross(struct vec3 *dst, const struct vec3 *v1,
         const struct vec3 *v2)
{
 __m128 s1v1 = _mm_shuffle_ps(v1->m, v1->m, _MM_SHUFFLE(3, 0, 2, 1));
 __m128 s1v2 = _mm_shuffle_ps(v2->m, v2->m, _MM_SHUFFLE(3, 1, 0, 2));
 __m128 s2v1 = _mm_shuffle_ps(v1->m, v1->m, _MM_SHUFFLE(3, 1, 0, 2));
 __m128 s2v2 = _mm_shuffle_ps(v2->m, v2->m, _MM_SHUFFLE(3, 0, 2, 1));
 dst->m = _mm_sub_ps(_mm_mul_ps(s1v1, s1v2), _mm_mul_ps(s2v1, s2v2));
}
