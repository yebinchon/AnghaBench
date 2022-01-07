
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


 scalar_t__ MRB_PROC_CFUNC_P (struct RProc*) ;
 int mrb_assoc_new (int *,int ,int ) ;
 char* mrb_debug_get_filename (int *,int *,int ) ;
 int mrb_debug_get_line (int *,int *,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_nil_value () ;
 struct RProc* mrb_proc_ptr (int ) ;
 int mrb_str_new_cstr (int *,char const*) ;

__attribute__((used)) static mrb_value
mrb_proc_source_location(mrb_state *mrb, mrb_value self)
{
  struct RProc *p = mrb_proc_ptr(self);

  if (MRB_PROC_CFUNC_P(p)) {
    return mrb_nil_value();
  }
  else {
    mrb_irep *irep = p->body.irep;
    int32_t line;
    const char *filename;

    filename = mrb_debug_get_filename(mrb, irep, 0);
    line = mrb_debug_get_line(mrb, irep, 0);

    return (!filename && line == -1)? mrb_nil_value()
        : mrb_assoc_new(mrb, mrb_str_new_cstr(mrb, filename), mrb_fixnum_value(line));
  }
}
