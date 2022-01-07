
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shader_sampler {int dummy; } ;
struct gs_shader {int dummy; } ;
struct TYPE_3__ {size_t num; struct shader_sampler* array; } ;
struct TYPE_4__ {TYPE_1__ samplers; } ;
struct gl_shader_parser {TYPE_2__ parser; } ;


 int gl_add_sampler (struct gs_shader*,struct shader_sampler*) ;

__attribute__((used)) static inline void gl_add_samplers(struct gs_shader *shader,
       struct gl_shader_parser *glsp)
{
 size_t i;
 for (i = 0; i < glsp->parser.samplers.num; i++) {
  struct shader_sampler *sampler =
   glsp->parser.samplers.array + i;
  gl_add_sampler(shader, sampler);
 }
}
