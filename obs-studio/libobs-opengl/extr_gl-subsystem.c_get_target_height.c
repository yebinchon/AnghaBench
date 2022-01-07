
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct gs_device {TYPE_1__* cur_render_target; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ GS_TEXTURE_2D ;
 int device_get_height (struct gs_device const*) ;
 int gs_cubetexture_get_size (TYPE_1__*) ;
 int gs_texture_get_height (TYPE_1__*) ;

__attribute__((used)) static inline uint32_t get_target_height(const struct gs_device *device)
{
 if (!device->cur_render_target)
  return device_get_height(device);

 if (device->cur_render_target->type == GS_TEXTURE_2D)
  return gs_texture_get_height(device->cur_render_target);
 else
  return gs_cubetexture_get_size(device->cur_render_target);
}
