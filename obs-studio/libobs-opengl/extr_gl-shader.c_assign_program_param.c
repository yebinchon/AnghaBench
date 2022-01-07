
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct program_param {int obj; struct gs_shader_param* param; } ;
struct gs_shader_param {int name; } ;
struct gs_program {int params; int obj; } ;


 int da_push_back (int ,struct program_param*) ;
 int glGetUniformLocation (int ,int ) ;
 int gl_success (char*) ;

__attribute__((used)) static bool assign_program_param(struct gs_program *program,
     struct gs_shader_param *param)
{
 struct program_param info;

 info.obj = glGetUniformLocation(program->obj, param->name);
 if (!gl_success("glGetUniformLocation"))
  return 0;

 if (info.obj == -1) {
  return 1;
 }

 info.param = param;
 da_push_back(program->params, &info);
 return 1;
}
