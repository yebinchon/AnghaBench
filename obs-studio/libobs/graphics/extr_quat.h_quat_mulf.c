
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int m; } ;


 int _mm_mul_ps (int ,int ) ;
 int _mm_set1_ps (float) ;

__attribute__((used)) static inline void quat_mulf(struct quat *dst, const struct quat *q, float f)
{
 dst->m = _mm_mul_ps(q->m, _mm_set1_ps(f));
}
