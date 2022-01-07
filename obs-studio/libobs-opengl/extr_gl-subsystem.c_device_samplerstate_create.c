
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_sampler_state {int ref; int * device; } ;
struct gs_sampler_info {int dummy; } ;
typedef struct gs_sampler_state gs_samplerstate_t ;
typedef int gs_device_t ;


 struct gs_sampler_state* bzalloc (int) ;
 int convert_sampler_info (struct gs_sampler_state*,struct gs_sampler_info const*) ;

gs_samplerstate_t *
device_samplerstate_create(gs_device_t *device,
      const struct gs_sampler_info *info)
{
 struct gs_sampler_state *sampler;

 sampler = bzalloc(sizeof(struct gs_sampler_state));
 sampler->device = device;
 sampler->ref = 1;

 convert_sampler_info(sampler, info);
 return sampler;
}
