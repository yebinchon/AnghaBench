
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_func {int dummy; } ;
struct gl_shader_parser {int gl_string; } ;


 int dstr_cat (int *,char*) ;
 int gl_write_main_func_call (struct gl_shader_parser*,struct shader_func*) ;
 int gl_write_main_storage_inputs (struct gl_shader_parser*,struct shader_func*) ;
 int gl_write_main_storage_outputs (struct gl_shader_parser*,struct shader_func*) ;
 int gl_write_main_vars (struct gl_shader_parser*,struct shader_func*) ;

__attribute__((used)) static void gl_write_main(struct gl_shader_parser *glsp,
     struct shader_func *main)
{
 dstr_cat(&glsp->gl_string, "void main(void)\n{\n");

 gl_write_main_vars(glsp, main);
 gl_write_main_storage_inputs(glsp, main);
 gl_write_main_func_call(glsp, main);
 gl_write_main_storage_outputs(glsp, main);

 dstr_cat(&glsp->gl_string, "}\n");
}
