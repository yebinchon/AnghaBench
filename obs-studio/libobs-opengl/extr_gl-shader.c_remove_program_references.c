
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gs_shader {scalar_t__ type; TYPE_1__* device; } ;
struct gs_program {struct gs_shader* pixel_shader; struct gs_shader* vertex_shader; struct gs_program* next; } ;
struct TYPE_2__ {struct gs_program* first_program; } ;


 scalar_t__ GS_SHADER_PIXEL ;
 scalar_t__ GS_SHADER_VERTEX ;
 int gs_program_destroy (struct gs_program*) ;

__attribute__((used)) static void remove_program_references(struct gs_shader *shader)
{
 struct gs_program *program = shader->device->first_program;

 while (program) {
  struct gs_program *next = program->next;
  bool destroy = 0;

  if (shader->type == GS_SHADER_VERTEX &&
      program->vertex_shader == shader)
   destroy = 1;

  else if (shader->type == GS_SHADER_PIXEL &&
    program->pixel_shader == shader)
   destroy = 1;

  if (destroy)
   gs_program_destroy(program);

  program = next;
 }
}
