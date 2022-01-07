
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;
struct matrix4 {int dummy; } ;
struct matrix3 {int dummy; } ;


 int quat_from_matrix4 (struct quat*,struct matrix4 const*) ;

void quat_from_matrix3(struct quat *dst, const struct matrix3 *m)
{
 quat_from_matrix4(dst, (const struct matrix4 *)m);
}
