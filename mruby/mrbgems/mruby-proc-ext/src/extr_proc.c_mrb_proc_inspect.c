
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * irep; } ;
struct RProc {TYPE_1__ body; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_irep ;
typedef int int32_t ;


 int MRB_PROC_CFUNC_P (struct RProc*) ;
 scalar_t__ MRB_PROC_STRICT_P (struct RProc*) ;
 int mrb_cptr (int ) ;
 char* mrb_debug_get_filename (int *,int *,int ) ;
 int mrb_debug_get_line (int *,int *,int ) ;
 int mrb_fixnum_value (int) ;
 struct RProc* mrb_proc_ptr (int ) ;
 int mrb_ptr_to_str (int *,int ) ;
 int mrb_str_cat_cstr (int *,int ,char const*) ;
 int mrb_str_cat_lit (int *,int ,char*) ;
 int mrb_str_cat_str (int *,int ,int ) ;
 int mrb_str_concat (int *,int ,int ) ;
 int mrb_str_new_lit (int *,char*) ;

__attribute__((used)) static mrb_value
mrb_proc_inspect(mrb_state *mrb, mrb_value self)
{
  struct RProc *p = mrb_proc_ptr(self);
  mrb_value str = mrb_str_new_lit(mrb, "#<Proc:");
  mrb_str_cat_str(mrb, str, mrb_ptr_to_str(mrb, mrb_cptr(self)));

  if (!MRB_PROC_CFUNC_P(p)) {
    mrb_irep *irep = p->body.irep;
    const char *filename;
    int32_t line;
    mrb_str_cat_lit(mrb, str, "@");

    filename = mrb_debug_get_filename(mrb, irep, 0);
    mrb_str_cat_cstr(mrb, str, filename ? filename : "-");
    mrb_str_cat_lit(mrb, str, ":");

    line = mrb_debug_get_line(mrb, irep, 0);
    if (line != -1) {
      mrb_str_concat(mrb, str, mrb_fixnum_value(line));
    }
    else {
      mrb_str_cat_lit(mrb, str, "-");
    }
  }

  if (MRB_PROC_STRICT_P(p)) {
    mrb_str_cat_lit(mrb, str, " (lambda)");
  }

  mrb_str_cat_lit(mrb, str, ">");
  return str;
}
