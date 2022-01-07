
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct gs_sampler_state** array; } ;
struct gs_shader {TYPE_1__ samplers; } ;
struct gs_sampler_state {int dummy; } ;
struct gs_device {struct gs_sampler_state** cur_samplers; } ;


 size_t GS_MAX_TEXTURES ;

__attribute__((used)) static void load_default_pixelshader_samplers(struct gs_device *device,
           struct gs_shader *ps)
{
 size_t i;
 if (!ps)
  return;

 for (i = 0; i < ps->samplers.num; i++) {
  struct gs_sampler_state *ss = ps->samplers.array[i];
  device->cur_samplers[i] = ss;
 }

 for (; i < GS_MAX_TEXTURES; i++)
  device->cur_samplers[i] = ((void*)0);
}
