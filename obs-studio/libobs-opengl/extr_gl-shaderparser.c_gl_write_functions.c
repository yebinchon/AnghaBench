
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shader_func {int dummy; } ;
struct TYPE_3__ {size_t num; struct shader_func* array; } ;
struct TYPE_4__ {TYPE_1__ funcs; } ;
struct gl_shader_parser {TYPE_2__ parser; } ;


 int gl_write_function (struct gl_shader_parser*,struct shader_func*) ;

__attribute__((used)) static inline void gl_write_functions(struct gl_shader_parser *glsp)
{
 size_t i;
 for (i = 0; i < glsp->parser.funcs.num; i++) {
  struct shader_func *func = glsp->parser.funcs.array + i;
  gl_write_function(glsp, func);
 }
}
