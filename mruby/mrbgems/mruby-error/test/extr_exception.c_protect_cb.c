
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_yield_argv (int *,int ,int ,int *) ;

__attribute__((used)) static mrb_value
protect_cb(mrb_state *mrb, mrb_value b)
{
  return mrb_yield_argv(mrb, b, 0, ((void*)0));
}
