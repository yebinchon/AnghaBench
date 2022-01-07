
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef scalar_t__ gid_t ;


 int E_RUNTIME_ERROR ;
 scalar_t__ getpeereid (int,scalar_t__*,scalar_t__*) ;
 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_fixnum_value (int ) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_sys_fail (int *,char*) ;
 int socket_fd (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_getpeereid(mrb_state *mrb, mrb_value self)
{
  mrb_raise(mrb, E_RUNTIME_ERROR, "getpeereid is not available on this system");
  return mrb_nil_value();

}
