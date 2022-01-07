
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {unsigned short sin6_port; } ;
struct sockaddr_in {unsigned short sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
typedef int mrb_value ;
typedef int mrb_state ;




 int E_ARGUMENT_ERROR ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int RSTRING_PTR (int ) ;
 int getnameinfo (struct sockaddr const*,int ,int ,int ,int *,int ,int ) ;
 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_fixnum_value (unsigned short) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_buf_new (int *,int ) ;
 int mrb_str_new_cstr (int *,char const*) ;
 int mrb_str_resize (int *,int ,int ) ;
 int mrb_sys_fail (int *,char*) ;
 unsigned short ntohs (unsigned short) ;
 int strlen (int ) ;

__attribute__((used)) static mrb_value
sa2addrlist(mrb_state *mrb, const struct sockaddr *sa, socklen_t salen)
{
  mrb_value ary, host;
  unsigned short port;
  const char *afstr;

  switch (sa->sa_family) {
  case 129:
    afstr = "AF_INET";
    port = ((struct sockaddr_in *)sa)->sin_port;
    break;
  case 128:
    afstr = "AF_INET6";
    port = ((struct sockaddr_in6 *)sa)->sin6_port;
    break;
  default:
    mrb_raise(mrb, E_ARGUMENT_ERROR, "bad af");
    return mrb_nil_value();
  }
  port = ntohs(port);
  host = mrb_str_buf_new(mrb, NI_MAXHOST);
  if (getnameinfo(sa, salen, RSTRING_PTR(host), NI_MAXHOST, ((void*)0), 0, NI_NUMERICHOST) == -1)
    mrb_sys_fail(mrb, "getnameinfo");
  mrb_str_resize(mrb, host, strlen(RSTRING_PTR(host)));
  ary = mrb_ary_new_capa(mrb, 4);
  mrb_ary_push(mrb, ary, mrb_str_new_cstr(mrb, afstr));
  mrb_ary_push(mrb, ary, mrb_fixnum_value(port));
  mrb_ary_push(mrb, ary, host);
  mrb_ary_push(mrb, ary, host);
  return ary;
}
