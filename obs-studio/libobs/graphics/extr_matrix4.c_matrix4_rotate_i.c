
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;
struct matrix4 {int dummy; } ;


 int matrix4_from_quat (struct matrix4*,struct quat const*) ;
 int matrix4_mul (struct matrix4*,struct matrix4*,struct matrix4 const*) ;

void matrix4_rotate_i(struct matrix4 *dst, const struct quat *q,
        const struct matrix4 *m)
{
 struct matrix4 temp;
 matrix4_from_quat(&temp, q);
 matrix4_mul(dst, &temp, m);
}
