
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef double mrb_float ;


 int complex_new (int *,double,double) ;
 int mrb_get_args (int *,char*,double*,double*) ;

__attribute__((used)) static mrb_value
complex_s_rect(mrb_state *mrb, mrb_value self)
{
  mrb_float real, imaginary = 0.0;

  mrb_get_args(mrb, "f|f", &real, &imaginary);
  return complex_new(mrb, real, imaginary);
}
