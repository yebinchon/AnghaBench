
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ SHUT_RDWR ;
 int mrb_fixnum_value (int ) ;
 int mrb_get_args (int *,char*,scalar_t__*) ;
 int mrb_sys_fail (int *,char*) ;
 scalar_t__ shutdown (int ,int) ;
 int socket_fd (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_shutdown(mrb_state *mrb, mrb_value self)
{
  mrb_int how = SHUT_RDWR;

  mrb_get_args(mrb, "|i", &how);
  if (shutdown(socket_fd(mrb, self), (int)how) != 0)
    mrb_sys_fail(mrb, "shutdown");
  return mrb_fixnum_value(0);
}
