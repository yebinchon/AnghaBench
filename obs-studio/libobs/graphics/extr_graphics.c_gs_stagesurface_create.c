
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int gs_stagesurf_t ;
struct TYPE_4__ {int * (* device_stagesurface_create ) (int ,int ,int ,int) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int gs_valid (char*) ;
 int * stub1 (int ,int ,int ,int) ;
 TYPE_2__* thread_graphics ;

gs_stagesurf_t *gs_stagesurface_create(uint32_t width, uint32_t height,
           enum gs_color_format color_format)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_stagesurface_create"))
  return ((void*)0);

 return graphics->exports.device_stagesurface_create(
  graphics->device, width, height, color_format);
}
