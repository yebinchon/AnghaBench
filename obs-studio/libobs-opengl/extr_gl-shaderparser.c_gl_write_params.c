
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shader_var {int dummy; } ;
struct TYPE_3__ {size_t num; struct shader_var* array; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct gl_shader_parser {int gl_string; TYPE_2__ parser; } ;


 int dstr_cat (int *,char*) ;
 int gl_write_var (struct gl_shader_parser*,struct shader_var*) ;

__attribute__((used)) static inline void gl_write_params(struct gl_shader_parser *glsp)
{
 size_t i;
 for (i = 0; i < glsp->parser.params.num; i++) {
  struct shader_var *var = glsp->parser.params.array + i;
  gl_write_var(glsp, var);
  dstr_cat(&glsp->gl_string, ";\n");
 }

 dstr_cat(&glsp->gl_string, "\n");
}
