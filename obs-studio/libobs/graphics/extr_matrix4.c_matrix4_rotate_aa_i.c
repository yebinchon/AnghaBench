
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix4 {int dummy; } ;
struct axisang {int dummy; } ;


 int matrix4_from_axisang (struct matrix4*,struct axisang const*) ;
 int matrix4_mul (struct matrix4*,struct matrix4*,struct matrix4 const*) ;

void matrix4_rotate_aa_i(struct matrix4 *dst, const struct axisang *aa,
    const struct matrix4 *m)
{
 struct matrix4 temp;
 matrix4_from_axisang(&temp, aa);
 matrix4_mul(dst, &temp, m);
}
