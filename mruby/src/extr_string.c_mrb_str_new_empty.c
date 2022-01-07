
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_obj_value (struct RString*) ;
 struct RString* str_new (int *,int ,int ) ;
 int str_with_class (struct RString*,int ) ;

__attribute__((used)) static mrb_value
mrb_str_new_empty(mrb_state *mrb, mrb_value str)
{
  struct RString *s = str_new(mrb, 0, 0);

  str_with_class(s, str);
  return mrb_obj_value(s);
}
