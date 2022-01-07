
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int fd; } ;
typedef int off_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int mrb_float ;


 int E_IO_ERROR ;
 int MRB_INT_MAX ;
 struct mrb_io* io_get_open_fptr (int *,int ) ;
 int lseek (int ,int,int) ;
 int mrb_fixnum_value (int) ;
 int mrb_float_value (int *,int ) ;
 int mrb_get_args (int *,char*,scalar_t__*,scalar_t__*) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_sys_fail (int *,char*) ;

mrb_value
mrb_io_sysseek(mrb_state *mrb, mrb_value io)
{
  struct mrb_io *fptr;
  off_t pos;
  mrb_int offset, whence = -1;

  mrb_get_args(mrb, "i|i", &offset, &whence);
  if (whence < 0) {
    whence = 0;
  }

  fptr = io_get_open_fptr(mrb, io);
  pos = lseek(fptr->fd, (off_t)offset, (int)whence);
  if (pos == -1) {
    mrb_sys_fail(mrb, "sysseek");
  }
  if (pos > MRB_INT_MAX) {

    return mrb_float_value(mrb, (mrb_float)pos);



  } else {
    return mrb_fixnum_value(pos);
  }
}
