
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_7__ {int float_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_REQ (int) ;
 int MRB_FLT_DIG ;
 int MRB_FLT_EPSILON ;
 int MRB_FLT_MANT_DIG ;
 int MRB_FLT_MAX ;
 int MRB_FLT_MAX_10_EXP ;
 int MRB_FLT_MAX_EXP ;
 int MRB_FLT_MIN ;
 int MRB_FLT_MIN_10_EXP ;
 int MRB_FLT_MIN_EXP ;
 int MRB_FLT_RADIX ;
 int mrb_define_const (TYPE_1__*,int ,char*,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_fixnum_value (int ) ;
 int mrb_float_value (TYPE_1__*,int ) ;
 int mrb_int_allbits ;
 int mrb_int_anybits ;
 int mrb_int_nobits ;
 struct RClass* mrb_module_get (TYPE_1__*,char*) ;

void
mrb_mruby_numeric_ext_gem_init(mrb_state* mrb)
{
  struct RClass *i = mrb_module_get(mrb, "Integral");

  mrb_define_method(mrb, i, "allbits?", mrb_int_allbits, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, i, "anybits?", mrb_int_anybits, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, i, "nobits?", mrb_int_nobits, MRB_ARGS_REQ(1));


  mrb_define_const(mrb, mrb->float_class, "RADIX", mrb_fixnum_value(MRB_FLT_RADIX));
  mrb_define_const(mrb, mrb->float_class, "MANT_DIG", mrb_fixnum_value(MRB_FLT_MANT_DIG));
  mrb_define_const(mrb, mrb->float_class, "EPSILON", mrb_float_value(mrb, MRB_FLT_EPSILON));
  mrb_define_const(mrb, mrb->float_class, "DIG", mrb_fixnum_value(MRB_FLT_DIG));
  mrb_define_const(mrb, mrb->float_class, "MIN_EXP", mrb_fixnum_value(MRB_FLT_MIN_EXP));
  mrb_define_const(mrb, mrb->float_class, "MIN", mrb_float_value(mrb, MRB_FLT_MIN));
  mrb_define_const(mrb, mrb->float_class, "MIN_10_EXP", mrb_fixnum_value(MRB_FLT_MIN_10_EXP));
  mrb_define_const(mrb, mrb->float_class, "MAX_EXP", mrb_fixnum_value(MRB_FLT_MAX_EXP));
  mrb_define_const(mrb, mrb->float_class, "MAX", mrb_float_value(mrb, MRB_FLT_MAX));
  mrb_define_const(mrb, mrb->float_class, "MAX_10_EXP", mrb_fixnum_value(MRB_FLT_MAX_10_EXP));

}
