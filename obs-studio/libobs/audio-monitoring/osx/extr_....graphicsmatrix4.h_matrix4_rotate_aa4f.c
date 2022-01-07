
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix4 {int dummy; } ;
struct axisang {int dummy; } ;


 int axisang_set (struct axisang*,float,float,float,float) ;
 int matrix4_rotate_aa (struct matrix4*,struct matrix4 const*,struct axisang*) ;

__attribute__((used)) static inline void matrix4_rotate_aa4f(struct matrix4 *dst,
           const struct matrix4 *m, float x,
           float y, float z, float rot)
{
 struct axisang aa;
 axisang_set(&aa, x, y, z, rot);
 matrix4_rotate_aa(dst, m, &aa);
}
