
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {float w; int m; } ;


 int _mm_setzero_ps () ;

__attribute__((used)) static inline void quat_identity(struct quat *q)
{
 q->m = _mm_setzero_ps();
 q->w = 1.0f;
}
