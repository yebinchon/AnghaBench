
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct matrix4 {int dummy; } ;


 int matrix4_scale_i (struct matrix4*,struct vec3*,struct matrix4*) ;
 int thread_graphics ;
 struct matrix4* top_matrix (int ) ;
 int vec3_set (struct vec3*,float,float,float) ;

void gs_matrix_scale3f(float x, float y, float z)
{
 struct matrix4 *top_mat = top_matrix(thread_graphics);
 struct vec3 p;

 if (top_mat) {
  vec3_set(&p, x, y, z);
  matrix4_scale_i(top_mat, &p, top_mat);
 }
}
