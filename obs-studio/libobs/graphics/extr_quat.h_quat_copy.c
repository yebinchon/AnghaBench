
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int m; } ;



__attribute__((used)) static inline void quat_copy(struct quat *dst, const struct quat *q)
{
 dst->m = q->m;
}
