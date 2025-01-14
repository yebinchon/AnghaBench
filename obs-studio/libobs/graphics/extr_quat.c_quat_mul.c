
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct quat {int w; } ;


 int quat_vec3 (struct vec3*,struct quat const*) ;
 int vec3_add (struct vec3*,struct vec3*,struct vec3*) ;
 int vec3_cross (struct vec3*,struct vec3*,struct vec3*) ;
 int vec3_dot (struct vec3*,struct vec3*) ;
 int vec3_mulf (struct vec3*,struct vec3*,int) ;

void quat_mul(struct quat *dst, const struct quat *q1, const struct quat *q2)
{
 struct vec3 q1axis, q2axis;
 struct vec3 temp1, temp2;

 quat_vec3(&q1axis, q1);
 quat_vec3(&q2axis, q2);

 vec3_mulf(&temp1, &q2axis, q1->w);
 vec3_mulf(&temp2, &q1axis, q2->w);
 vec3_add(&temp1, &temp1, &temp2);
 vec3_cross(&temp2, &q1axis, &q2axis);
 vec3_add((struct vec3 *)dst, &temp1, &temp2);

 dst->w = (q1->w * q2->w) - vec3_dot(&q1axis, &q2axis);
}
