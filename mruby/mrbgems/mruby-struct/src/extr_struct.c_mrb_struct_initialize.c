
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_get_args (int *,char*,int **,int *) ;
 int mrb_struct_initialize_withArg (int *,int ,int *,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_initialize(mrb_state *mrb, mrb_value self)
{
  mrb_value *argv;
  mrb_int argc;

  mrb_get_args(mrb, "*!", &argv, &argc);
  return mrb_struct_initialize_withArg(mrb, argc, argv, self);
}
