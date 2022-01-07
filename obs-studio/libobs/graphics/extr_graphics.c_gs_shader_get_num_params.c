
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_shader_t ;
struct TYPE_4__ {int (* gs_shader_get_num_params ) (int const*) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,int const*) ;
 int stub1 (int const*) ;
 TYPE_2__* thread_graphics ;

int gs_shader_get_num_params(const gs_shader_t *shader)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_shader_get_num_params", shader))
  return 0;

 return graphics->exports.gs_shader_get_num_params(shader);
}
