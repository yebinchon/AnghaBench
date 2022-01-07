
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct mrb_rational {int dummy; } ;
struct RClass {int dummy; } ;
struct TYPE_8__ {struct RClass* fixnum_class; } ;
typedef TYPE_1__ mrb_state ;


 int ISTRUCT_DATA_SIZE ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 int MRB_TT_ISTRUCT ;
 int fix_to_r ;
 int mrb_assert (int) ;
 int mrb_class_get (TYPE_1__*,char*) ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_undef_class_method (TYPE_1__*,struct RClass*,char*) ;
 int rational_denominator ;
 int rational_negative_p ;
 int rational_numerator ;
 int rational_s_new ;
 int rational_to_f ;
 int rational_to_i ;
 int rational_to_r ;

void mrb_mruby_rational_gem_init(mrb_state *mrb)
{
  struct RClass *rat;

  rat = mrb_define_class(mrb, "Rational", mrb_class_get(mrb, "Numeric"));




  MRB_SET_INSTANCE_TT(rat, MRB_TT_DATA);

  mrb_undef_class_method(mrb, rat, "new");
  mrb_define_class_method(mrb, rat, "_new", rational_s_new, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, rat, "numerator", rational_numerator, MRB_ARGS_NONE());
  mrb_define_method(mrb, rat, "denominator", rational_denominator, MRB_ARGS_NONE());

  mrb_define_method(mrb, rat, "to_f", rational_to_f, MRB_ARGS_NONE());

  mrb_define_method(mrb, rat, "to_i", rational_to_i, MRB_ARGS_NONE());
  mrb_define_method(mrb, rat, "to_r", rational_to_r, MRB_ARGS_NONE());
  mrb_define_method(mrb, rat, "negative?", rational_negative_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, mrb->fixnum_class, "to_r", fix_to_r, MRB_ARGS_NONE());
}
