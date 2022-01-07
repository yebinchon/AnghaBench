
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;


 struct RClass* mrb_class_get_under (int *,struct RClass*,char*) ;
 struct RClass* mrb_module_get (int *,char*) ;
 int mrb_raisef (int *,struct RClass*,char*,char const*) ;

__attribute__((used)) static void
domain_error(mrb_state *mrb, const char *func)
{
  struct RClass *math = mrb_module_get(mrb, "Math");
  struct RClass *domainerror = mrb_class_get_under(mrb, math, "DomainError");
  mrb_raisef(mrb, domainerror, "Numerical argument is out of domain - %s", func);
}
