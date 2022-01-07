
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ EXIT_SUCCESS ;
 int exit (int) ;
 int mrb_get_args (int *,char*,scalar_t__*) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
f_exit(mrb_state *mrb, mrb_value self)
{
  mrb_int i = EXIT_SUCCESS;

  mrb_get_args(mrb, "|i", &i);
  exit((int)i);

  return mrb_nil_value();
}
