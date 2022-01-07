
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ RSTRING_LEN (int ) ;
 int mrb_intern_cstr (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 scalar_t__ mrb_string_p (int ) ;

__attribute__((used)) static int
mrb_io_read_data_pending(mrb_state *mrb, mrb_value io)
{
  mrb_value buf = mrb_iv_get(mrb, io, mrb_intern_cstr(mrb, "@buf"));
  if (mrb_string_p(buf) && RSTRING_LEN(buf) > 0) {
    return 1;
  }
  return 0;
}
