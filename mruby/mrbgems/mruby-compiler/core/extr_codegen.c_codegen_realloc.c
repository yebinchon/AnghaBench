
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mrb; } ;
typedef TYPE_1__ codegen_scope ;


 int codegen_error (TYPE_1__*,char*) ;
 void* mrb_realloc_simple (int ,void*,size_t) ;

__attribute__((used)) static void*
codegen_realloc(codegen_scope *s, void *p, size_t len)
{
  p = mrb_realloc_simple(s->mrb, p, len);

  if (!p && len > 0) codegen_error(s, "mrb_realloc");
  return p;
}
