
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {float w; } ;


 float EPSILON ;
 float acosf (float) ;
 float fabsf (float) ;
 int quat_copy (struct quat*,struct quat const*) ;
 int quat_mulf (struct quat*,struct quat*,float) ;
 float sinf (float) ;

void quat_log(struct quat *dst, const struct quat *q)
{
 float angle = acosf(q->w);
 float sine = sinf(angle);
 float w = q->w;

 quat_copy(dst, q);
 dst->w = 0.0f;

 if ((fabsf(w) < 1.0f) && (fabsf(sine) >= EPSILON)) {
  sine = angle / sine;
  quat_mulf(dst, dst, sine);
 }
}
