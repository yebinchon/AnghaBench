
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ RSTR_LEN (struct RString*) ;
 int mrb_bool_value (int) ;
 struct RString* mrb_str_ptr (int ) ;

__attribute__((used)) static mrb_value
mrb_str_empty_p(mrb_state *mrb, mrb_value self)
{
  struct RString *s = mrb_str_ptr(self);

  return mrb_bool_value(RSTR_LEN(s) == 0);
}
