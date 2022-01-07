
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 scalar_t__ accept (int ,int *,int *) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_sys_fail (int *,char*) ;

__attribute__((used)) static mrb_value
mrb_socket_accept(mrb_state *mrb, mrb_value klass)
{
  int s1;
  mrb_int s0;

  mrb_get_args(mrb, "i", &s0);
  s1 = (int)accept(s0, ((void*)0), ((void*)0));
  if (s1 == -1) {
    mrb_sys_fail(mrb, "accept");
  }
  return mrb_fixnum_value(s1);
}
