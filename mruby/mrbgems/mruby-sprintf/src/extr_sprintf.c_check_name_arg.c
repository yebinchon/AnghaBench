
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 int mrb_raisef (int *,int ,char*,char const*,size_t,...) ;

__attribute__((used)) static void
check_name_arg(mrb_state *mrb, int posarg, const char *name, size_t len)
{
  if (posarg > 0) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "named%l after unnumbered(%d)",
               name, len, posarg);
  }
  if (posarg == -1) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "named%l after numbered", name, len);
  }
}
