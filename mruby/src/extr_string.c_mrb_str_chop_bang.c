
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int RSTR_LEN (struct RString*) ;
 char* RSTR_PTR (struct RString*) ;
 int RSTR_SET_LEN (struct RString*,int) ;
 int mrb_nil_value () ;
 int mrb_str_modify_keep_ascii (int *,struct RString*) ;
 struct RString* mrb_str_ptr (int ) ;
 int utf8len (char const*,char const*) ;

__attribute__((used)) static mrb_value
mrb_str_chop_bang(mrb_state *mrb, mrb_value str)
{
  struct RString *s = mrb_str_ptr(str);

  mrb_str_modify_keep_ascii(mrb, s);
  if (RSTR_LEN(s) > 0) {
    mrb_int len;
    len = RSTR_LEN(s) - 1;

    if (RSTR_PTR(s)[len] == '\n') {
      if (len > 0 &&
          RSTR_PTR(s)[len-1] == '\r') {
        len--;
      }
    }
    RSTR_SET_LEN(s, len);
    RSTR_PTR(s)[len] = '\0';
    return str;
  }
  return mrb_nil_value();
}
