
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shader_var {int dummy; } ;
struct TYPE_2__ {size_t num; struct shader_var* array; } ;
struct shader_func {char* name; struct cf_token* start; TYPE_1__ params; int return_type; } ;
struct gl_shader_parser {int gl_string; } ;
struct cf_token {int dummy; } ;


 int dstr_cat (int *,char*) ;
 int gl_write_function_contents (struct gl_shader_parser*,struct cf_token**,char*) ;
 int gl_write_type (struct gl_shader_parser*,int ) ;
 int gl_write_var (struct gl_shader_parser*,struct shader_var*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void gl_write_function(struct gl_shader_parser *glsp,
         struct shader_func *func)
{
 size_t i;
 struct cf_token *token;

 gl_write_type(glsp, func->return_type);
 dstr_cat(&glsp->gl_string, " ");

 if (strcmp(func->name, "main") == 0)
  dstr_cat(&glsp->gl_string, "_main_wrap");
 else
  dstr_cat(&glsp->gl_string, func->name);

 dstr_cat(&glsp->gl_string, "(");

 for (i = 0; i < func->params.num; i++) {
  struct shader_var *param = func->params.array + i;

  if (i > 0)
   dstr_cat(&glsp->gl_string, ", ");
  gl_write_var(glsp, param);
 }

 dstr_cat(&glsp->gl_string, ")\n");

 token = func->start;
 gl_write_function_contents(glsp, &token, "}");
 dstr_cat(&glsp->gl_string, "}\n\n");
}
