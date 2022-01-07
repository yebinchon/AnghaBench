
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int fd; int readable; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int fsize_t ;


 int E_ARGUMENT_ERROR ;
 int E_EOF_ERROR ;
 int E_IO_ERROR ;
 int RSTRING (int ) ;
 int RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 scalar_t__ io_get_open_fptr (int *,int ) ;
 int mrb_get_args (int *,char*,scalar_t__*,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_modify (int *,int ) ;
 int mrb_str_new (int *,int *,scalar_t__) ;
 int mrb_str_new_cstr (int *,char*) ;
 int mrb_str_resize (int *,int ,int) ;
 int mrb_sys_fail (int *,char*) ;
 int read (int ,int ,int ) ;

mrb_value
mrb_io_sysread(mrb_state *mrb, mrb_value io)
{
  struct mrb_io *fptr;
  mrb_value buf = mrb_nil_value();
  mrb_int maxlen;
  int ret;

  mrb_get_args(mrb, "i|S", &maxlen, &buf);
  if (maxlen < 0) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "negative expanding string size");
  }
  else if (maxlen == 0) {
    return mrb_str_new(mrb, ((void*)0), maxlen);
  }

  if (mrb_nil_p(buf)) {
    buf = mrb_str_new(mrb, ((void*)0), maxlen);
  }

  if (RSTRING_LEN(buf) != maxlen) {
    buf = mrb_str_resize(mrb, buf, maxlen);
  } else {
    mrb_str_modify(mrb, RSTRING(buf));
  }

  fptr = (struct mrb_io *)io_get_open_fptr(mrb, io);
  if (!fptr->readable) {
    mrb_raise(mrb, E_IO_ERROR, "not opened for reading");
  }
  ret = read(fptr->fd, RSTRING_PTR(buf), (fsize_t)maxlen);
  switch (ret) {
    case 0:
      if (maxlen == 0) {
        buf = mrb_str_new_cstr(mrb, "");
      } else {
        mrb_raise(mrb, E_EOF_ERROR, "sysread failed: End of File");
      }
      break;
    case -1:
      mrb_sys_fail(mrb, "sysread failed");
      break;
    default:
      if (RSTRING_LEN(buf) != ret) {
        buf = mrb_str_resize(mrb, buf, ret);
      }
      break;
  }

  return buf;
}
