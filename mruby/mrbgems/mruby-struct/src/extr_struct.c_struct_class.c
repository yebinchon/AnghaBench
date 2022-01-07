
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;


 struct RClass* mrb_class_get (int *,char*) ;

__attribute__((used)) static struct RClass *
struct_class(mrb_state *mrb)
{
  return mrb_class_get(mrb, "Struct");
}
