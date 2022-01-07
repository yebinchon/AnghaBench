
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int ss ;
typedef int socklen_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int fsize_t ;


 int RSTRING_PTR (int ) ;
 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_get_args (int *,char*,scalar_t__*,scalar_t__*) ;
 int mrb_str_buf_new (int *,scalar_t__) ;
 int mrb_str_resize (int *,int ,scalar_t__) ;
 int mrb_sys_fail (int *,char*) ;
 int recvfrom (int,int ,int ,int,struct sockaddr*,int*) ;
 int sa2addrlist (int *,struct sockaddr*,int) ;
 int socket_fd (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_ipsocket_recvfrom(mrb_state *mrb, mrb_value self)
{
  struct sockaddr_storage ss;
  socklen_t socklen;
  mrb_value a, buf, pair;
  mrb_int flags, maxlen;
  ssize_t n;
  int fd;

  fd = socket_fd(mrb, self);
  flags = 0;
  mrb_get_args(mrb, "i|i", &maxlen, &flags);
  buf = mrb_str_buf_new(mrb, maxlen);
  socklen = sizeof(ss);
  n = recvfrom(fd, RSTRING_PTR(buf), (fsize_t)maxlen, (int)flags,
          (struct sockaddr *)&ss, &socklen);
  if (n == -1) {
    mrb_sys_fail(mrb, "recvfrom");
  }
  mrb_str_resize(mrb, buf, (mrb_int)n);
  a = sa2addrlist(mrb, (struct sockaddr *)&ss, socklen);
  pair = mrb_ary_new_capa(mrb, 2);
  mrb_ary_push(mrb, pair, buf);
  mrb_ary_push(mrb, pair, a);
  return pair;
}
