
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int gs_texture_t ;
struct TYPE_4__ {int array_count; int const type; int cur_value; } ;
typedef TYPE_1__ gs_sparam_t ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int da_copy_array (int ,void const*,size_t) ;
 int gs_shader_set_texture (TYPE_1__*,int *) ;

void gs_shader_set_val(gs_sparam_t *param, const void *val, size_t size)
{
 int count = param->array_count;
 size_t expected_size = 0;
 if (!count)
  count = 1;

 switch ((uint32_t)param->type) {
 case 137:
  expected_size = sizeof(float);
  break;
 case 138:
 case 136:
  expected_size = sizeof(int);
  break;
 case 135:
  expected_size = sizeof(int) * 2;
  break;
 case 134:
  expected_size = sizeof(int) * 3;
  break;
 case 133:
  expected_size = sizeof(int) * 4;
  break;
 case 130:
  expected_size = sizeof(float) * 2;
  break;
 case 129:
  expected_size = sizeof(float) * 3;
  break;
 case 128:
  expected_size = sizeof(float) * 4;
  break;
 case 132:
  expected_size = sizeof(float) * 4 * 4;
  break;
 case 131:
  expected_size = sizeof(void *);
  break;
 default:
  expected_size = 0;
 }

 expected_size *= count;
 if (!expected_size)
  return;

 if (expected_size != size) {
  blog(LOG_ERROR, "gs_shader_set_val (GL): Size of shader "
    "param does not match the size of the input");
  return;
 }

 if (param->type == 131)
  gs_shader_set_texture(param, *(gs_texture_t **)val);
 else
  da_copy_array(param->cur_value, val, size);
}
