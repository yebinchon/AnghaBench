
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_4__ {struct RClass* hash_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int hash_slice ;
 int hash_values_at ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;

void
mrb_mruby_hash_ext_gem_init(mrb_state *mrb)
{
  struct RClass *h;

  h = mrb->hash_class;
  mrb_define_method(mrb, h, "values_at", hash_values_at, MRB_ARGS_ANY());
  mrb_define_method(mrb, h, "slice", hash_slice, MRB_ARGS_ANY());
}
