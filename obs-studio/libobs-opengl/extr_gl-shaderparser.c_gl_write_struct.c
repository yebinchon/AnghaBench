
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shader_var {int dummy; } ;
struct TYPE_2__ {size_t num; struct shader_var* array; } ;
struct shader_struct {char* name; TYPE_1__ vars; } ;
struct gl_shader_parser {int gl_string; } ;


 int dstr_cat (int *,char*) ;
 int gl_write_var (struct gl_shader_parser*,struct shader_var*) ;

__attribute__((used)) static void gl_write_struct(struct gl_shader_parser *glsp,
       struct shader_struct *st)
{
 size_t i;
 dstr_cat(&glsp->gl_string, "struct ");
 dstr_cat(&glsp->gl_string, st->name);
 dstr_cat(&glsp->gl_string, " {\n");

 for (i = 0; i < st->vars.num; i++) {
  struct shader_var *var = st->vars.array + i;

  dstr_cat(&glsp->gl_string, "\t");
  gl_write_var(glsp, var);
  dstr_cat(&glsp->gl_string, ";\n");
 }

 dstr_cat(&glsp->gl_string, "};\n\n");
}
