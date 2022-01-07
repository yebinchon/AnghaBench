
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct in6_addr {int s6_addr; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;
typedef int buf ;


 size_t AF_INET ;
 size_t AF_INET6 ;
 int E_ARGUMENT_ERROR ;
 int inet_pton (size_t,char*,void*) ;
 int memcpy (char*,char*,size_t) ;
 int mrb_get_args (int *,char*,size_t*,char**,size_t*) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_new (int *,char*,int) ;

__attribute__((used)) static mrb_value
mrb_ipsocket_pton(mrb_state *mrb, mrb_value klass)
{
  mrb_int af, n;
  char *bp, buf[50];

  mrb_get_args(mrb, "is", &af, &bp, &n);
  if ((size_t)n > sizeof(buf) - 1)
    mrb_raise(mrb, E_ARGUMENT_ERROR, "invalid address");
  memcpy(buf, bp, n);
  buf[n] = '\0';

  if (af == AF_INET) {
    struct in_addr in;
    if (inet_pton(AF_INET, buf, (void *)&in.s_addr) != 1)
      goto invalid;
    return mrb_str_new(mrb, (char*)&in.s_addr, 4);
  } else if (af == AF_INET6) {
    struct in6_addr in6;
    if (inet_pton(AF_INET6, buf, (void *)&in6.s6_addr) != 1)
      goto invalid;
    return mrb_str_new(mrb, (char*)&in6.s6_addr, 16);
  } else
    mrb_raise(mrb, E_ARGUMENT_ERROR, "unsupported address family");

invalid:
  mrb_raise(mrb, E_ARGUMENT_ERROR, "invalid address");
  return mrb_nil_value();
}
