
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int fsize_t ;


 int RSTRING_PTR (int ) ;
 int mrb_get_args (int *,char*,scalar_t__*,scalar_t__*) ;
 int mrb_str_buf_new (int *,scalar_t__) ;
 int mrb_str_resize (int *,int ,scalar_t__) ;
 int mrb_sys_fail (int *,char*) ;
 int recv (int ,int ,int ,int) ;
 int socket_fd (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_recv(mrb_state *mrb, mrb_value self)
{
  ssize_t n;
  mrb_int maxlen, flags = 0;
  mrb_value buf;

  mrb_get_args(mrb, "i|i", &maxlen, &flags);
  buf = mrb_str_buf_new(mrb, maxlen);
  n = recv(socket_fd(mrb, self), RSTRING_PTR(buf), (fsize_t)maxlen, (int)flags);
  if (n == -1)
    mrb_sys_fail(mrb, "recv");
  mrb_str_resize(mrb, buf, (mrb_int)n);
  return buf;
}
