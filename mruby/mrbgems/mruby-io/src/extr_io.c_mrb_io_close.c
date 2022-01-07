
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int FALSE ;
 int fptr_finalize (int *,struct mrb_io*,int ) ;
 struct mrb_io* io_get_open_fptr (int *,int ) ;
 int mrb_nil_value () ;

mrb_value
mrb_io_close(mrb_state *mrb, mrb_value self)
{
  struct mrb_io *fptr;
  fptr = io_get_open_fptr(mrb, self);
  fptr_finalize(mrb, fptr, FALSE);
  return mrb_nil_value();
}
