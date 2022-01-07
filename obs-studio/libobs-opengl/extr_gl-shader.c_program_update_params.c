
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct program_param {int dummy; } ;
struct TYPE_2__ {size_t num; struct program_param* array; } ;
struct gs_program {TYPE_1__ params; } ;


 int program_set_param_data (struct gs_program*,struct program_param*) ;

void program_update_params(struct gs_program *program)
{
 for (size_t i = 0; i < program->params.num; i++) {
  struct program_param *pp = program->params.array + i;
  program_set_param_data(program, pp);
 }
}
