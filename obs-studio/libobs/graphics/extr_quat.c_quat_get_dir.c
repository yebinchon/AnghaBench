
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct quat {int dummy; } ;
struct matrix3 {int z; } ;


 int matrix3_from_quat (struct matrix3*,struct quat const*) ;
 int vec3_copy (struct vec3*,int *) ;

void quat_get_dir(struct vec3 *dst, const struct quat *q)
{
 struct matrix3 m;
 matrix3_from_quat(&m, q);
 vec3_copy(dst, &m.z);
}
