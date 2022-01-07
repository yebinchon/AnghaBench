
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 char* RSTRING_CSTR (int *,int ) ;
 int mrb_cloexec_open (int *,char const*,int,int) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int *,int *,int*) ;
 int mrb_io_flags_to_modenum (int *,int) ;
 int mrb_io_modestr_to_flags (int *,char*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_str_new_cstr (int *,char*) ;

mrb_value
mrb_io_s_sysopen(mrb_state *mrb, mrb_value klass)
{
  mrb_value path = mrb_nil_value();
  mrb_value mode = mrb_nil_value();
  mrb_int fd, perm = -1;
  const char *pat;
  int flags, modenum;

  mrb_get_args(mrb, "S|Si", &path, &mode, &perm);
  if (mrb_nil_p(mode)) {
    mode = mrb_str_new_cstr(mrb, "r");
  }
  if (perm < 0) {
    perm = 0666;
  }

  pat = RSTRING_CSTR(mrb, path);
  flags = mrb_io_modestr_to_flags(mrb, RSTRING_CSTR(mrb, mode));
  modenum = mrb_io_flags_to_modenum(mrb, flags);
  fd = mrb_cloexec_open(mrb, pat, modenum, perm);
  return mrb_fixnum_value(fd);
}
