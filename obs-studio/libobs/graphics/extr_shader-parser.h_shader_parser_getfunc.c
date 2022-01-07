
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct shader_func* array; } ;
struct shader_parser {TYPE_1__ funcs; } ;
struct shader_func {int name; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static inline struct shader_func *
shader_parser_getfunc(struct shader_parser *sp, const char *func_name)
{
 size_t i;
 for (i = 0; i < sp->funcs.num; i++) {
  struct shader_func *func = sp->funcs.array + i;
  if (strcmp(func->name, func_name) == 0)
   return func;
 }

 return ((void*)0);
}
