
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int fd; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 struct mrb_io* io_get_open_fptr (int *,int ) ;
 int mrb_fixnum_value (int ) ;

mrb_value
mrb_io_fileno(mrb_state *mrb, mrb_value io)
{
  struct mrb_io *fptr;
  fptr = io_get_open_fptr(mrb, io);
  return mrb_fixnum_value(fptr->fd);
}
