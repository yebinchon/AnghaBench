
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int buf ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int E_ARGUMENT_ERROR ;
 int * inet_ntop (int,char*,char*,int) ;
 int mrb_get_args (int *,char*,scalar_t__*,char**,scalar_t__*) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_new_cstr (int *,char*) ;

__attribute__((used)) static mrb_value
mrb_ipsocket_ntop(mrb_state *mrb, mrb_value klass)
{
  mrb_int af, n;
  char *addr, buf[50];

  mrb_get_args(mrb, "is", &af, &addr, &n);
  if ((af == AF_INET && n != 4) || (af == AF_INET6 && n != 16))
    mrb_raise(mrb, E_ARGUMENT_ERROR, "invalid address");
  if (inet_ntop((int)af, addr, buf, sizeof(buf)) == ((void*)0))
    mrb_raise(mrb, E_ARGUMENT_ERROR, "invalid address");
  return mrb_str_new_cstr(mrb, buf);
}
