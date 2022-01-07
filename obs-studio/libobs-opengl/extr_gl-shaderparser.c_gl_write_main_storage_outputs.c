
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {char* name; int type; int member_0; } ;
struct shader_func {int return_type; int mapping; } ;
struct gl_shader_parser {int gl_string; } ;


 int dstr_cat (int *,char*) ;
 int gl_write_main_storage_assign (struct gl_shader_parser*,struct shader_var*,int *,int *,int) ;

__attribute__((used)) static inline void gl_write_main_storage_outputs(struct gl_shader_parser *glsp,
       struct shader_func *main)
{


 if (!main->mapping) {
  struct shader_var var = {0};
  var.name = "outputval";
  var.type = main->return_type;
  dstr_cat(&glsp->gl_string, "\n");
  gl_write_main_storage_assign(glsp, &var, ((void*)0), ((void*)0), 0);
 }
}
