
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float w; int m; } ;
struct quat {int m; } ;



__attribute__((used)) static inline void quat_vec3(struct vec3 *v, const struct quat *q)
{
 v->m = q->m;
 v->w = 0.0f;
}
