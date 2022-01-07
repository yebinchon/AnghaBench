
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;
struct matrix4 {int dummy; } ;
struct axisang {int dummy; } ;


 int matrix4_from_quat (struct matrix4*,struct quat*) ;
 int quat_from_axisang (struct quat*,struct axisang const*) ;

void matrix4_from_axisang(struct matrix4 *dst, const struct axisang *aa)
{
 struct quat q;
 quat_from_axisang(&q, aa);
 matrix4_from_quat(dst, &q);
}
