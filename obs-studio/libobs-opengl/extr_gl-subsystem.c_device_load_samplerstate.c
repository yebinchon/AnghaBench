
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_samplerstate_t ;
struct TYPE_4__ {int ** cur_samplers; int cur_pixel_shader; } ;
typedef TYPE_1__ gs_device_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int load_sampler_on_textures (TYPE_1__*,int *,int) ;

void device_load_samplerstate(gs_device_t *device, gs_samplerstate_t *ss,
         int unit)
{

 if (!device->cur_pixel_shader)
  ss = ((void*)0);

 if (device->cur_samplers[unit] == ss)
  return;

 device->cur_samplers[unit] = ss;

 if (!ss)
  return;

 if (!load_sampler_on_textures(device, ss, unit))
  blog(LOG_ERROR, "device_load_samplerstate (GL) failed");

 return;
}
