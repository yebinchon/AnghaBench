
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 scalar_t__ RSTRING_PTR (int ) ;
 scalar_t__ accept (int ,struct sockaddr*,int*) ;
 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_str_buf_new (int *,int) ;
 int mrb_str_resize (int *,int ,int) ;
 int mrb_sys_fail (int *,char*) ;

__attribute__((used)) static mrb_value
mrb_socket_accept2(mrb_state *mrb, mrb_value klass)
{
  mrb_value ary, sastr;
  int s1;
  mrb_int s0;
  socklen_t socklen;

  mrb_get_args(mrb, "i", &s0);
  socklen = sizeof(struct sockaddr_storage);
  sastr = mrb_str_buf_new(mrb, socklen);
  s1 = (int)accept(s0, (struct sockaddr *)RSTRING_PTR(sastr), &socklen);
  if (s1 == -1) {
    mrb_sys_fail(mrb, "accept");
  }

  mrb_str_resize(mrb, sastr, socklen);
  ary = mrb_ary_new_capa(mrb, 2);
  mrb_ary_push(mrb, ary, mrb_fixnum_value(s1));
  mrb_ary_push(mrb, ary, sastr);
  return ary;
}
