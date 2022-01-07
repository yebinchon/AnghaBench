
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_sampler {int dummy; } ;
struct gs_shader {int samplers; int device; } ;
struct gs_sampler_info {int dummy; } ;
typedef int gs_samplerstate_t ;


 int da_push_back (int ,int **) ;
 int * device_samplerstate_create (int ,struct gs_sampler_info*) ;
 int shader_sampler_convert (struct shader_sampler*,struct gs_sampler_info*) ;

__attribute__((used)) static inline void gl_add_sampler(struct gs_shader *shader,
      struct shader_sampler *sampler)
{
 gs_samplerstate_t *new_sampler;
 struct gs_sampler_info info;

 shader_sampler_convert(sampler, &info);
 new_sampler = device_samplerstate_create(shader->device, &info);

 da_push_back(shader->samplers, &new_sampler);
}
