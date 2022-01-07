
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_sampler_info {int dummy; } ;
typedef int gs_samplerstate_t ;
struct TYPE_4__ {int * (* device_samplerstate_create ) (int ,struct gs_sampler_info const*) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,struct gs_sampler_info const*) ;
 int * stub1 (int ,struct gs_sampler_info const*) ;
 TYPE_2__* thread_graphics ;

gs_samplerstate_t *gs_samplerstate_create(const struct gs_sampler_info *info)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_samplerstate_create", info))
  return ((void*)0);

 return graphics->exports.device_samplerstate_create(graphics->device,
           info);
}
