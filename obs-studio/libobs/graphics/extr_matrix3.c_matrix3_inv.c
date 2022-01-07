
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct matrix4 {int dummy; } ;
struct TYPE_2__ {float w; } ;
struct matrix3 {TYPE_1__ t; } ;


 int matrix4_from_matrix3 (struct matrix4*,struct matrix3 const*) ;
 int matrix4_inv (struct matrix4*,struct matrix4*) ;

void matrix3_inv(struct matrix3 *dst, const struct matrix3 *m)
{
 struct matrix4 m4;
 matrix4_from_matrix3(&m4, m);
 matrix4_inv((struct matrix4 *)dst, &m4);
 dst->t.w = 0.0f;
}
