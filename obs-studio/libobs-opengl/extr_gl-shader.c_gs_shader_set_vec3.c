
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vec3 {int ptr; } ;
struct TYPE_3__ {int cur_value; } ;
typedef TYPE_1__ gs_sparam_t ;


 int da_copy_array (int ,int ,int) ;

void gs_shader_set_vec3(gs_sparam_t *param, const struct vec3 *val)
{
 da_copy_array(param->cur_value, val->ptr, sizeof(*val));
}
