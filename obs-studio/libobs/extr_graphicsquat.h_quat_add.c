
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int m; } ;


 int _mm_add_ps (int ,int ) ;

__attribute__((used)) static inline void quat_add(struct quat *dst, const struct quat *q1,
       const struct quat *q2)
{
 dst->m = _mm_add_ps(q1->m, q2->m);
}
