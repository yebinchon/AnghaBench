
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_basic_ptr (int ) ;
 int mrb_check_frozen (int *,int ) ;
 int mrb_write_barrier (int *,int ) ;

__attribute__((used)) static void
mrb_struct_modify(mrb_state *mrb, mrb_value strct)
{
  mrb_check_frozen(mrb, mrb_basic_ptr(strct));
  mrb_write_barrier(mrb, mrb_basic_ptr(strct));
}
