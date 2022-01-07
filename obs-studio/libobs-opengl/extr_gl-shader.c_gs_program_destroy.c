
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gs_program {int obj; TYPE_1__* next; TYPE_1__** prev_next; int params; int attribs; TYPE_2__* device; } ;
struct TYPE_4__ {struct gs_program* cur_program; } ;
struct TYPE_3__ {struct TYPE_3__** prev_next; } ;


 int bfree (struct gs_program*) ;
 int da_free (int ) ;
 int glDeleteProgram (int ) ;
 int glUseProgram (int ) ;
 int gl_success (char*) ;

void gs_program_destroy(struct gs_program *program)
{
 if (!program)
  return;

 if (program->device->cur_program == program) {
  program->device->cur_program = 0;
  glUseProgram(0);
  gl_success("glUseProgram (zero)");
 }

 da_free(program->attribs);
 da_free(program->params);

 if (program->next)
  program->next->prev_next = program->prev_next;
 if (program->prev_next)
  *program->prev_next = program->next;

 glDeleteProgram(program->obj);
 gl_success("glDeleteProgram");

 bfree(program);
}
