
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ RSTRING_LEN (int ) ;
 scalar_t__ RSTRING_PTR (int ) ;
 int connect (int,struct sockaddr*,int ) ;
 int mrb_get_args (int *,char*,scalar_t__*,int *) ;
 int mrb_nil_value () ;
 int mrb_sys_fail (int *,char*) ;

__attribute__((used)) static mrb_value
mrb_socket_connect(mrb_state *mrb, mrb_value klass)
{
  mrb_value sastr;
  mrb_int s;

  mrb_get_args(mrb, "iS", &s, &sastr);
  if (connect((int)s, (struct sockaddr *)RSTRING_PTR(sastr), (socklen_t)RSTRING_LEN(sastr)) == -1) {
    mrb_sys_fail(mrb, "connect");
  }
  return mrb_nil_value();
}
