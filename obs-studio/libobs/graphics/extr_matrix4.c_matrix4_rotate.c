
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;
struct matrix4 {int dummy; } ;


 int matrix4_from_quat (struct matrix4*,struct quat const*) ;
 int matrix4_mul (struct matrix4*,struct matrix4 const*,struct matrix4*) ;

void matrix4_rotate(struct matrix4 *dst, const struct matrix4 *m,
      const struct quat *q)
{
 struct matrix4 temp;
 matrix4_from_quat(&temp, q);
 matrix4_mul(dst, m, &temp);
}
