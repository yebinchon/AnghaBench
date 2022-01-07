
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int w; int z; int y; int x; } ;



__attribute__((used)) static inline void quat_neg(struct quat *dst, const struct quat *q)
{
 dst->x = -q->x;
 dst->y = -q->y;
 dst->z = -q->z;
 dst->w = -q->w;
}
