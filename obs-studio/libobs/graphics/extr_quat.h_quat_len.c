
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;


 float quat_dot (struct quat const*,struct quat const*) ;
 float sqrtf (float) ;

__attribute__((used)) static inline float quat_len(const struct quat *q)
{
 float dot_val = quat_dot(q, q);
 return (dot_val > 0.0f) ? sqrtf(dot_val) : 0.0f;
}
