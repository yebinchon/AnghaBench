
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix4 {int dummy; } ;
struct axisang {int dummy; } ;


 int axisang_set (struct axisang*,float,float,float,float) ;
 int gs_valid (char*) ;
 int matrix4_rotate_aa_i (struct matrix4*,struct axisang*,struct matrix4*) ;
 int thread_graphics ;
 struct matrix4* top_matrix (int ) ;

void gs_matrix_rotaa4f(float x, float y, float z, float angle)
{
 struct matrix4 *top_mat;
 struct axisang aa;

 if (!gs_valid("gs_matrix_rotaa4f"))
  return;

 top_mat = top_matrix(thread_graphics);
 if (top_mat) {
  axisang_set(&aa, x, y, z, angle);
  matrix4_rotate_aa_i(top_mat, &aa, top_mat);
 }
}
