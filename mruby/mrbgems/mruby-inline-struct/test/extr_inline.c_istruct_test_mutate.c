
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int memcpy (char*,char*,int) ;
 scalar_t__ mrb_istruct_ptr (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
istruct_test_mutate(mrb_state *mrb, mrb_value self)
{
  char *ptr = (char*)mrb_istruct_ptr(self);
  memcpy(ptr, "mutate", 6);
  return mrb_nil_value();
}
