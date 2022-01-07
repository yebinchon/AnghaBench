
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct shader_func {TYPE_1__ params; } ;
struct gl_shader_parser {int dummy; } ;


 int gl_write_main_storage_assign (struct gl_shader_parser*,int ,int *,char*,int) ;

__attribute__((used)) static inline void gl_write_main_storage_inputs(struct gl_shader_parser *glsp,
      struct shader_func *main)
{
 gl_write_main_storage_assign(glsp, main->params.array, ((void*)0),
         "inputval_", 1);
}
