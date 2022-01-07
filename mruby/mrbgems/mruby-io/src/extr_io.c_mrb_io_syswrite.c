
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int fd2; int fd; int writable; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int fsize_t ;


 int E_IO_ERROR ;
 scalar_t__ RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 struct mrb_io* io_get_open_fptr (int *,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_sys_fail (int *,int ) ;
 int write (int,int ,int ) ;

mrb_value
mrb_io_syswrite(mrb_state *mrb, mrb_value io)
{
  struct mrb_io *fptr;
  mrb_value str, buf;
  int fd, length;

  fptr = io_get_open_fptr(mrb, io);
  if (! fptr->writable) {
    mrb_raise(mrb, E_IO_ERROR, "not opened for writing");
  }

  mrb_get_args(mrb, "S", &str);
  buf = str;

  if (fptr->fd2 == -1) {
    fd = fptr->fd;
  } else {
    fd = fptr->fd2;
  }
  length = write(fd, RSTRING_PTR(buf), (fsize_t)RSTRING_LEN(buf));
  if (length == -1) {
    mrb_sys_fail(mrb, 0);
  }

  return mrb_fixnum_value(length);
}
