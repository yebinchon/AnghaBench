
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int val ;
struct TYPE_3__ {int cur_value; } ;
typedef TYPE_1__ gs_sparam_t ;


 int da_copy_array (int ,int*,int) ;

void gs_shader_set_int(gs_sparam_t *param, int val)
{
 da_copy_array(param->cur_value, &val, sizeof(val));
}
