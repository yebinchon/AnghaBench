
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_bool_value (int) ;
 int mrb_get_args (int *,char*,char**) ;

__attribute__((used)) static mrb_value
istruct_test_test_receive_direct(mrb_state *mrb, mrb_value self)
{
  char *ptr;
  mrb_get_args(mrb, "I", &ptr);
  return mrb_bool_value(ptr[0] == 's');
}
