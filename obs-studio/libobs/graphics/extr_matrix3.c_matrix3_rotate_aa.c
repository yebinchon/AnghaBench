
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix3 {int dummy; } ;
struct axisang {int dummy; } ;


 int matrix3_from_axisang (struct matrix3*,struct axisang const*) ;
 int matrix3_mul (struct matrix3*,struct matrix3 const*,struct matrix3*) ;

void matrix3_rotate_aa(struct matrix3 *dst, const struct matrix3 *m,
         const struct axisang *aa)
{
 struct matrix3 temp;
 matrix3_from_axisang(&temp, aa);
 matrix3_mul(dst, m, &temp);
}
