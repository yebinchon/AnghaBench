
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct shader_func {TYPE_1__ params; } ;
struct gl_shader_parser {int gl_string; } ;


 int dstr_cat (int *,char*) ;
 int gl_write_storage_var (struct gl_shader_parser*,scalar_t__,int,char*) ;

__attribute__((used)) static inline void gl_write_inputs(struct gl_shader_parser *glsp,
       struct shader_func *main)
{
 size_t i;
 for (i = 0; i < main->params.num; i++)
  gl_write_storage_var(glsp, main->params.array + i, 1,
         "inputval_");
 dstr_cat(&glsp->gl_string, "\n");
}
