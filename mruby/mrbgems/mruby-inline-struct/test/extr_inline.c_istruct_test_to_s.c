
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ mrb_istruct_ptr (int ) ;
 int mrb_str_new_cstr (int *,char const*) ;

__attribute__((used)) static mrb_value
istruct_test_to_s(mrb_state *mrb, mrb_value self)
{
  return mrb_str_new_cstr(mrb, (const char*)mrb_istruct_ptr(self));
}
