
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {scalar_t__ fd2; scalar_t__ fd; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_NOTIMP_ERROR ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int fcntl (scalar_t__,int ) ;
 struct mrb_io* io_get_open_fptr (int *,int ) ;
 int mrb_false_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_sys_fail (int *,char*) ;
 int mrb_true_value () ;

mrb_value
mrb_io_close_on_exec_p(mrb_state *mrb, mrb_value self)
{
  mrb_raise(mrb, E_NOTIMP_ERROR, "IO#close_on_exec? is not supported on the platform");
  return mrb_false_value();

}
