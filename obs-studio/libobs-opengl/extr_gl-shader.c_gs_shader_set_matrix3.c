
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct matrix4 {int dummy; } ;
struct matrix3 {int dummy; } ;
typedef int mat ;
struct TYPE_3__ {int cur_value; } ;
typedef TYPE_1__ gs_sparam_t ;


 int da_copy_array (int ,struct matrix4*,int) ;
 int matrix4_from_matrix3 (struct matrix4*,struct matrix3 const*) ;

void gs_shader_set_matrix3(gs_sparam_t *param, const struct matrix3 *val)
{
 struct matrix4 mat;
 matrix4_from_matrix3(&mat, val);

 da_copy_array(param->cur_value, &mat, sizeof(mat));
}
