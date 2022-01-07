
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shader_struct {int name; } ;
struct TYPE_2__ {size_t num; struct shader_struct* array; } ;
struct shader_parser {TYPE_1__ structs; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static inline struct shader_struct *
shader_parser_getstruct(struct shader_parser *sp, const char *struct_name)
{
 size_t i;
 for (i = 0; i < sp->structs.num; i++) {
  struct shader_struct *st = sp->structs.array + i;
  if (strcmp(st->name, struct_name) == 0)
   return st;
 }

 return ((void*)0);
}
