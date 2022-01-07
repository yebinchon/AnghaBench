
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 size_t RITE_LV_NULL_MARK ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static void
sym_validate_len(mrb_state *mrb, size_t len)
{
  if (len >= RITE_LV_NULL_MARK) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "symbol length too long");
  }
}
