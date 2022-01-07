
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_texture_t ;
struct TYPE_4__ {int (* device_get_texture_type ) (int const*) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;
typedef enum gs_texture_type { ____Placeholder_gs_texture_type } gs_texture_type ;


 int GS_TEXTURE_2D ;
 int gs_valid_p (char*,int const*) ;
 int stub1 (int const*) ;
 TYPE_2__* thread_graphics ;

enum gs_texture_type gs_get_texture_type(const gs_texture_t *texture)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_get_texture_type", texture))
  return GS_TEXTURE_2D;

 return graphics->exports.device_get_texture_type(texture);
}
