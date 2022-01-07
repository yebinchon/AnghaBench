
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int RARRAY_LEN (int ) ;
 int mrb_ary_ref ;
 int mrb_get_args (int *,char*,int **,int *) ;
 int mrb_get_values_at (int *,int ,int ,int ,int *,int ) ;

__attribute__((used)) static mrb_value
mrb_ary_values_at(mrb_state *mrb, mrb_value self)
{
  mrb_int argc;
  mrb_value *argv;

  mrb_get_args(mrb, "*", &argv, &argc);

  return mrb_get_values_at(mrb, self, RARRAY_LEN(self), argc, argv, mrb_ary_ref);
}
