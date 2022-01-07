
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int E_SCRIPT_ERROR ;
 int mrb_exc_new_str_lit (int *,int ,char*) ;
 int mrb_exc_set (int *,int ) ;

__attribute__((used)) static void
irep_error(mrb_state *mrb)
{
  mrb_exc_set(mrb, mrb_exc_new_str_lit(mrb, E_SCRIPT_ERROR, "irep load error"));
}
