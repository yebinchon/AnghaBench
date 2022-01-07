
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_sparam_t ;
typedef int gs_shader_t ;
struct TYPE_4__ {int * (* gs_shader_get_viewproj_matrix ) (int const*) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,int const*) ;
 int * stub1 (int const*) ;
 TYPE_2__* thread_graphics ;

gs_sparam_t *gs_shader_get_viewproj_matrix(const gs_shader_t *shader)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_shader_get_viewproj_matrix", shader))
  return ((void*)0);

 return graphics->exports.gs_shader_get_viewproj_matrix(shader);
}
