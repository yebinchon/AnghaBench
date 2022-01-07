
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ CHMOD (char*,int) ;
 int RSTRING_CSTR (int *,int ) ;
 scalar_t__ UNLINK (char*) ;
 int mrb_fixnum_value (int) ;
 int mrb_format (int *,char*,int ,int ) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (int ,int) ;
 int mrb_sys_fail (int *,int ) ;
 scalar_t__ rename (char*,char*) ;

__attribute__((used)) static mrb_value
mrb_file_s_rename(mrb_state *mrb, mrb_value obj)
{
  mrb_value from, to;
  char *src, *dst;

  mrb_get_args(mrb, "SS", &from, &to);
  src = mrb_locale_from_utf8(RSTRING_CSTR(mrb, from), -1);
  dst = mrb_locale_from_utf8(RSTRING_CSTR(mrb, to), -1);
  if (rename(src, dst) < 0) {







    mrb_locale_free(src);
    mrb_locale_free(dst);
    mrb_sys_fail(mrb, RSTRING_CSTR(mrb, mrb_format(mrb, "(%v, %v)", from, to)));
    return mrb_fixnum_value(-1);
  }
  mrb_locale_free(src);
  mrb_locale_free(dst);
  return mrb_fixnum_value(0);
}
