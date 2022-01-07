
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct matrix4 {int dummy; } ;


 int gs_valid (char*) ;
 int matrix4_translate3v_i (struct matrix4*,struct vec3 const*,struct matrix4*) ;
 int thread_graphics ;
 struct matrix4* top_matrix (int ) ;

void gs_matrix_translate(const struct vec3 *pos)
{
 struct matrix4 *top_mat;

 if (!gs_valid("gs_matrix_translate"))
  return;

 top_mat = top_matrix(thread_graphics);
 if (top_mat)
  matrix4_translate3v_i(top_mat, pos, top_mat);
}
