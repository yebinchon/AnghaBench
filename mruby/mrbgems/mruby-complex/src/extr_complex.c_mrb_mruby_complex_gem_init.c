
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct mrb_complex {int dummy; } ;
struct RClass {int dummy; } ;
struct TYPE_8__ {struct RClass* kernel_module; } ;
typedef TYPE_1__ mrb_state ;


 int ISTRUCT_DATA_SIZE ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 int MRB_TT_ISTRUCT ;
 int complex_div ;
 int complex_imaginary ;
 int complex_real ;
 int complex_s_rect ;
 int complex_to_c ;
 int complex_to_f ;
 int complex_to_i ;
 int mrb_assert (int) ;
 int mrb_class_get (TYPE_1__*,char*) ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int) ;
 int mrb_undef_class_method (TYPE_1__*,struct RClass*,char*) ;

void mrb_mruby_complex_gem_init(mrb_state *mrb)
{
  struct RClass *comp;




  comp = mrb_define_class(mrb, "Complex", mrb_class_get(mrb, "Numeric"));



  MRB_SET_INSTANCE_TT(comp, MRB_TT_DATA);

  mrb_undef_class_method(mrb, comp, "new");
  mrb_define_class_method(mrb, comp, "rectangular", complex_s_rect, MRB_ARGS_REQ(1)|MRB_ARGS_OPT(1));
  mrb_define_class_method(mrb, comp, "rect", complex_s_rect, MRB_ARGS_REQ(1)|MRB_ARGS_OPT(1));
  mrb_define_method(mrb, mrb->kernel_module, "Complex", complex_s_rect, MRB_ARGS_REQ(1)|MRB_ARGS_OPT(1));
  mrb_define_method(mrb, comp, "real", complex_real, MRB_ARGS_NONE());
  mrb_define_method(mrb, comp, "imaginary", complex_imaginary, MRB_ARGS_NONE());
  mrb_define_method(mrb, comp, "to_f", complex_to_f, MRB_ARGS_NONE());
  mrb_define_method(mrb, comp, "to_i", complex_to_i, MRB_ARGS_NONE());
  mrb_define_method(mrb, comp, "to_c", complex_to_c, MRB_ARGS_NONE());
  mrb_define_method(mrb, comp, "__div__", complex_div, MRB_ARGS_REQ(1));
}
