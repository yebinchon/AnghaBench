
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int x; int y; int z; int w; } ;


 float EPSILON ;
 int cosf (float) ;
 int quat_copy (struct quat*,struct quat const*) ;
 int quat_mulf (struct quat*,struct quat*,float) ;
 float sinf (float) ;
 float sqrtf (int) ;

void quat_exp(struct quat *dst, const struct quat *q)
{
 float length = sqrtf(q->x * q->x + q->y * q->y + q->z * q->z);
 float sine = sinf(length);

 quat_copy(dst, q);
 sine = (length > EPSILON) ? (sine / length) : 1.0f;
 quat_mulf(dst, dst, sine);
 dst->w = cosf(length);
}
