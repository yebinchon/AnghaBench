
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;


 float quat_dot (struct quat*,struct quat*) ;
 int quat_sub (struct quat*,struct quat const*,struct quat const*) ;
 float sqrtf (float) ;

__attribute__((used)) static inline float quat_dist(const struct quat *q1, const struct quat *q2)
{
 struct quat temp;
 float dot_val;

 quat_sub(&temp, q1, q2);
 dot_val = quat_dot(&temp, &temp);
 return (dot_val > 0.0f) ? sqrtf(dot_val) : 0.0f;
}
