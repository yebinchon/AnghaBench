
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int gs_texture_t ;
struct TYPE_4__ {int * (* device_voltexture_create ) (int ,int ,int ,int ,int,int ,int const**,int ) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int gs_valid (char*) ;
 int * stub1 (int ,int ,int ,int ,int,int ,int const**,int ) ;
 TYPE_2__* thread_graphics ;

gs_texture_t *gs_voltexture_create(uint32_t width, uint32_t height,
       uint32_t depth,
       enum gs_color_format color_format,
       uint32_t levels, const uint8_t **data,
       uint32_t flags)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_voltexture_create"))
  return ((void*)0);

 return graphics->exports.device_voltexture_create(graphics->device,
         width, height, depth,
         color_format, levels,
         data, flags);
}
