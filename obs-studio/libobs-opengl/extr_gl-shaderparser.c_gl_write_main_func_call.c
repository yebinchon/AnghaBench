
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct shader_func {TYPE_2__ params; } ;
struct gl_shader_parser {int gl_string; } ;
struct TYPE_3__ {char* name; } ;


 int dstr_cat (int *,char*) ;

__attribute__((used)) static inline void gl_write_main_func_call(struct gl_shader_parser *glsp,
        struct shader_func *main_func)
{
 size_t i;
 dstr_cat(&glsp->gl_string, "\n\toutputval = _main_wrap(");

 for (i = 0; i < main_func->params.num; i++) {
  if (i)
   dstr_cat(&glsp->gl_string, ", ");
  dstr_cat(&glsp->gl_string, main_func->params.array[i].name);
 }

 dstr_cat(&glsp->gl_string, ");\n");
}
