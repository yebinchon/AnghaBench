
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int m; } ;


 int _mm_mul_ps (int ,int ) ;
 int _mm_set1_ps (float) ;
 int _mm_setzero_ps () ;
 float quat_dot (struct quat const*,struct quat const*) ;
 float sqrtf (float) ;

__attribute__((used)) static inline void quat_norm(struct quat *dst, const struct quat *q)
{
 float dot_val = quat_dot(q, q);
 dst->m = (dot_val > 0.0f)
    ? _mm_mul_ps(q->m, _mm_set1_ps(1.0f / sqrtf(dot_val)))
    : _mm_setzero_ps();
}
