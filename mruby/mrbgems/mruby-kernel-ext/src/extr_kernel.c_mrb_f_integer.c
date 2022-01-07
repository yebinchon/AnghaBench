
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_convert_to_integer (int *,int ,int ) ;
 int mrb_get_args (int *,char*,int *,int *) ;

__attribute__((used)) static mrb_value
mrb_f_integer(mrb_state *mrb, mrb_value self)
{
  mrb_value arg;
  mrb_int base = 0;

  mrb_get_args(mrb, "o|i", &arg, &base);
  return mrb_convert_to_integer(mrb, arg, base);
}
