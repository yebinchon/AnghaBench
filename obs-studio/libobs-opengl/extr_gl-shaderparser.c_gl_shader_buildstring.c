
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_func {int dummy; } ;
struct gl_shader_parser {int gl_string; int parser; } ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int dstr_cat (int *,char*) ;
 int dstr_copy (int *,char*) ;
 int gl_rename_attributes (struct gl_shader_parser*) ;
 int gl_write_functions (struct gl_shader_parser*) ;
 int gl_write_inputs (struct gl_shader_parser*,struct shader_func*) ;
 int gl_write_interface_block (struct gl_shader_parser*) ;
 int gl_write_main (struct gl_shader_parser*,struct shader_func*) ;
 int gl_write_outputs (struct gl_shader_parser*,struct shader_func*) ;
 int gl_write_params (struct gl_shader_parser*) ;
 int gl_write_structs (struct gl_shader_parser*) ;
 struct shader_func* shader_parser_getfunc (int *,char*) ;

__attribute__((used)) static bool gl_shader_buildstring(struct gl_shader_parser *glsp)
{
 struct shader_func *main_func;

 main_func = shader_parser_getfunc(&glsp->parser, "main");
 if (!main_func) {
  blog(LOG_ERROR, "function 'main' not found");
  return 0;
 }

 dstr_copy(&glsp->gl_string, "#version 330\n\n");
 dstr_cat(&glsp->gl_string, "const bool obs_glsl_compile = true;\n\n");
 gl_write_params(glsp);
 gl_write_inputs(glsp, main_func);
 gl_write_outputs(glsp, main_func);
 gl_write_interface_block(glsp);
 gl_write_structs(glsp);
 gl_write_functions(glsp);
 gl_write_main(glsp, main_func);
 gl_rename_attributes(glsp);

 return 1;
}
