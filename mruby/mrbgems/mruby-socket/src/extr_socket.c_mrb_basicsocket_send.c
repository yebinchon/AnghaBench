
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int fsize_t ;


 scalar_t__ RSTRING_LEN (int ) ;
 scalar_t__ RSTRING_PTR (int ) ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_get_args (int *,char*,int *,scalar_t__*,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_sys_fail (int *,char*) ;
 int send (int ,scalar_t__,int ,int) ;
 int sendto (int ,scalar_t__,int ,int,struct sockaddr const*,int ) ;
 int socket_fd (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_send(mrb_state *mrb, mrb_value self)
{
  ssize_t n;
  mrb_int flags;
  mrb_value dest, mesg;

  dest = mrb_nil_value();
  mrb_get_args(mrb, "Si|S", &mesg, &flags, &dest);
  if (mrb_nil_p(dest)) {
    n = send(socket_fd(mrb, self), RSTRING_PTR(mesg), (fsize_t)RSTRING_LEN(mesg), (int)flags);
  } else {
    n = sendto(socket_fd(mrb, self), RSTRING_PTR(mesg), (fsize_t)RSTRING_LEN(mesg), (int)flags, (const struct sockaddr*)RSTRING_PTR(dest), (fsize_t)RSTRING_LEN(dest));
  }
  if (n == -1)
    mrb_sys_fail(mrb, "send");
  return mrb_fixnum_value((mrb_int)n);
}
