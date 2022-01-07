
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int gs_texture_t ;
struct TYPE_4__ {int (* gs_voltexture_get_height ) (int const*) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,int const*) ;
 int stub1 (int const*) ;
 TYPE_2__* thread_graphics ;

uint32_t gs_voltexture_get_height(const gs_texture_t *voltex)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_voltexture_get_height", voltex))
  return 0;

 return graphics->exports.gs_voltexture_get_height(voltex);
}
