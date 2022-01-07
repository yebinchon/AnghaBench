
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int mrb_sys_fail (int *,char*) ;
 scalar_t__ socket (int,int,int) ;

__attribute__((used)) static mrb_value
mrb_socket_socket(mrb_state *mrb, mrb_value klass)
{
  mrb_int domain, type, protocol;
  int s;

  mrb_get_args(mrb, "iii", &domain, &type, &protocol);
  s = (int)socket((int)domain, (int)type, (int)protocol);
  if (s == -1)
    mrb_sys_fail(mrb, "socket");
  return mrb_fixnum_value(s);
}
