
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int mrb_int ;


 int E_ARGUMENT_ERROR ;
 int mrb_raisef (int *,int ,char*,int,...) ;

__attribute__((used)) static void
check_pos_arg(mrb_state *mrb, int posarg, mrb_int n)
{
  if (posarg > 0) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "numbered(%i) after unnumbered(%d)",
               n, posarg);
  }
  if (posarg == -2) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "numbered(%i) after named", n);
  }
  if (n < 1) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "invalid index - %i$", n);
  }
}
