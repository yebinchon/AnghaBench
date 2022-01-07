
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;
struct matrix3 {int dummy; } ;
struct axisang {int dummy; } ;


 int matrix3_from_quat (struct matrix3*,struct quat*) ;
 int quat_from_axisang (struct quat*,struct axisang const*) ;

void matrix3_from_axisang(struct matrix3 *dst, const struct axisang *aa)
{
 struct quat q;
 quat_from_axisang(&q, aa);
 matrix3_from_quat(dst, &q);
}
