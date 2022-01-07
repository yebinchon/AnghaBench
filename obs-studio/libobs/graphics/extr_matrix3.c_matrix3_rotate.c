
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;
struct matrix3 {int dummy; } ;


 int matrix3_from_quat (struct matrix3*,struct quat const*) ;
 int matrix3_mul (struct matrix3*,struct matrix3 const*,struct matrix3*) ;

void matrix3_rotate(struct matrix3 *dst, const struct matrix3 *m,
      const struct quat *q)
{
 struct matrix3 temp;
 matrix3_from_quat(&temp, q);
 matrix3_mul(dst, m, &temp);
}
