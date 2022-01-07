
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_init_data {int dummy; } ;
typedef int gs_swapchain_t ;
struct TYPE_4__ {int * (* device_swapchain_create ) (int ,struct gs_init_data*) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,struct gs_init_data const*) ;
 int * stub1 (int ,struct gs_init_data*) ;
 TYPE_2__* thread_graphics ;

gs_swapchain_t *gs_swapchain_create(const struct gs_init_data *data)
{
 struct gs_init_data new_data = *data;
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_swapchain_create", data))
  return ((void*)0);

 return graphics->exports.device_swapchain_create(graphics->device,
        &new_data);
}
