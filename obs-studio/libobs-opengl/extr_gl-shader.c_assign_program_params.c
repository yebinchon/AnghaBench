
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_program {int pixel_shader; int vertex_shader; } ;


 int assign_program_shader_params (struct gs_program*,int ) ;

__attribute__((used)) static inline bool assign_program_params(struct gs_program *program)
{
 if (!assign_program_shader_params(program, program->vertex_shader))
  return 0;
 if (!assign_program_shader_params(program, program->pixel_shader))
  return 0;

 return 1;
}
