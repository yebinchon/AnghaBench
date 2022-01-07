
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_NOTIMP_ERROR ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static mrb_value
mrb_mod_s_constants(mrb_state *mrb, mrb_value mod)
{
  mrb_raise(mrb, E_NOTIMP_ERROR, "Module.constants not implemented");
  return mrb_nil_value();
}
