
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_10__ {struct RClass* kernel_module; } ;
typedef TYPE_1__ mrb_state ;
typedef scalar_t__ mrb_bool ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_REQ (int) ;
 int MRB_INT_BIT ;
 int MRB_INT_MAX ;
 int MRB_INT_MIN ;
 int m_str_match_p ;
 int mrb_define_const (TYPE_1__*,struct RClass*,char*,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_module (TYPE_1__*,char*) ;
 int mrb_fixnum_value (int ) ;
 int mrb_float_value (TYPE_1__*,int) ;
 int mrb_gv_set (TYPE_1__*,int ,int ) ;
 int mrb_init_test_vformat (TYPE_1__*) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 int mrb_true_value () ;
 int t_print ;

void
mrb_init_test_driver(mrb_state *mrb, mrb_bool verbose)
{
  struct RClass *krn, *mrbtest;

  krn = mrb->kernel_module;
  mrb_define_method(mrb, krn, "t_print", t_print, MRB_ARGS_ANY());
  mrb_define_method(mrb, krn, "_str_match?", m_str_match_p, MRB_ARGS_REQ(2));

  mrbtest = mrb_define_module(mrb, "Mrbtest");

  mrb_define_const(mrb, mrbtest, "FIXNUM_MAX", mrb_fixnum_value(MRB_INT_MAX));
  mrb_define_const(mrb, mrbtest, "FIXNUM_MIN", mrb_fixnum_value(MRB_INT_MIN));
  mrb_define_const(mrb, mrbtest, "FIXNUM_BIT", mrb_fixnum_value(MRB_INT_BIT));





  mrb_define_const(mrb, mrbtest, "FLOAT_TOLERANCE", mrb_float_value(mrb, 1e-12));



  mrb_init_test_vformat(mrb);

  if (verbose) {
    mrb_gv_set(mrb, mrb_intern_lit(mrb, "$mrbtest_verbose"), mrb_true_value());
  }
}
