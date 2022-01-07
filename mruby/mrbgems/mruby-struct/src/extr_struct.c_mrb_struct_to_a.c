
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int RSTRUCT_LEN (int ) ;
 int RSTRUCT_PTR (int ) ;
 int mrb_ary_new_from_values (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_to_a(mrb_state *mrb, mrb_value self)
{
  return mrb_ary_new_from_values(mrb, RSTRUCT_LEN(self), RSTRUCT_PTR(self));
}
