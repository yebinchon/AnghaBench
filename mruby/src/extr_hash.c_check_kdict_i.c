
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_symbol_p (int ) ;

__attribute__((used)) static int
check_kdict_i(mrb_state *mrb, mrb_value key, mrb_value val, void *data)
{
  if (!mrb_symbol_p(key)) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "keyword argument hash with non symbol keys");
  }
  return 0;
}
