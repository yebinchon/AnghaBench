
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int gs_texture_t ;
struct TYPE_4__ {int (* gs_cubetexture_get_size ) (int const*) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,int const*) ;
 int stub1 (int const*) ;
 TYPE_2__* thread_graphics ;

uint32_t gs_cubetexture_get_size(const gs_texture_t *cubetex)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_cubetexture_get_size", cubetex))
  return 0;

 return graphics->exports.gs_cubetexture_get_size(cubetex);
}
