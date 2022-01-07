
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rand_state ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 int mrb_fixnum (int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_float_value (int *,int ) ;
 int mrb_raise (int *,int ,char*) ;
 int rand_real (int *) ;
 int rand_uint32 (int *) ;

__attribute__((used)) static mrb_value
random_rand(mrb_state *mrb, rand_state *t, mrb_value max)
{
  mrb_value value;

  if (mrb_fixnum(max) == 0) {

    value = mrb_float_value(mrb, rand_real(t));



  }
  else {
    value = mrb_fixnum_value(rand_uint32(t) % mrb_fixnum(max));
  }

  return value;
}
