
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep_struct {int written; } ;
struct TYPE_2__ {size_t num; char** array; } ;
struct ep_func {TYPE_1__ struct_deps; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;


 int dstr_cat (struct dstr*,char*) ;
 struct ep_struct* ep_getstruct (struct effect_parser*,char const*) ;
 int ep_write_struct (struct dstr*,struct ep_struct*) ;

__attribute__((used)) static inline void ep_write_func_struct_deps(struct effect_parser *ep,
          struct dstr *shader,
          struct ep_func *func)
{
 size_t i;
 for (i = 0; i < func->struct_deps.num; i++) {
  const char *name = func->struct_deps.array[i];
  struct ep_struct *st = ep_getstruct(ep, name);

  if (!st->written) {
   ep_write_struct(shader, st);
   dstr_cat(shader, "\n");
   st->written = 1;
  }
 }
}
