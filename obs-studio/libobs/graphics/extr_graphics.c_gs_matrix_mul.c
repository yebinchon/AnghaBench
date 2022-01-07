
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix4 {int dummy; } ;


 int gs_valid (char*) ;
 int matrix4_mul (struct matrix4*,struct matrix4 const*,struct matrix4*) ;
 int thread_graphics ;
 struct matrix4* top_matrix (int ) ;

void gs_matrix_mul(const struct matrix4 *matrix)
{
 struct matrix4 *top_mat;

 if (!gs_valid("gs_matrix_mul"))
  return;

 top_mat = top_matrix(thread_graphics);
 if (top_mat)
  matrix4_mul(top_mat, matrix, top_mat);
}
