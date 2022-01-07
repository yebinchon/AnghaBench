
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shader_attrib {int dummy; } ;
struct TYPE_2__ {size_t num; struct shader_attrib* array; } ;
struct gs_shader {TYPE_1__ attribs; } ;
struct gs_program {struct gs_shader* vertex_shader; } ;


 int assign_program_attrib (struct gs_program*,struct shader_attrib*) ;

__attribute__((used)) static inline bool assign_program_attribs(struct gs_program *program)
{
 struct gs_shader *shader = program->vertex_shader;

 for (size_t i = 0; i < shader->attribs.num; i++) {
  struct shader_attrib *attrib = shader->attribs.array + i;
  if (!assign_program_attrib(program, attrib))
   return 0;
 }

 return 1;
}
