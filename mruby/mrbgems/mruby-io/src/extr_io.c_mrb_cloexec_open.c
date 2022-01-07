
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int fmode_t ;




 int FALSE ;
 scalar_t__ O_CLOEXEC ;
 scalar_t__ O_NOINHERIT ;
 int RSTRING_CSTR (int *,int ) ;
 int TRUE ;
 int errno ;
 int mrb_fd_cloexec (int *,int) ;
 int mrb_format (int *,char*,char const*) ;
 int mrb_garbage_collect (int *) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (char const*,int) ;
 int mrb_sys_fail (int *,int ) ;
 int open (char*,int,int ) ;

int
mrb_cloexec_open(mrb_state *mrb, const char *pathname, mrb_int flags, mrb_int mode)
{
  int fd, retry = FALSE;
  char* fname = mrb_locale_from_utf8(pathname, -1);







reopen:
  fd = open(fname, (int)flags, (fmode_t)mode);
  if (fd == -1) {
    if (!retry) {
      switch (errno) {
        case 128:
        case 129:
        mrb_garbage_collect(mrb);
        retry = TRUE;
        goto reopen;
      }
    }

    mrb_sys_fail(mrb, RSTRING_CSTR(mrb, mrb_format(mrb, "open %s", pathname)));
  }
  mrb_locale_free(fname);

  if (fd <= 2) {
    mrb_fd_cloexec(mrb, fd);
  }
  return fd;
}
