
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 int mrb_bool_value (int) ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_string_p (int ) ;
 scalar_t__ str_eql (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_str_eql(mrb_state *mrb, mrb_value self)
{
  mrb_value str2;
  mrb_bool eql_p;

  mrb_get_args(mrb, "o", &str2);
  eql_p = (mrb_string_p(str2)) && str_eql(mrb, self, str2);

  return mrb_bool_value(eql_p);
}
