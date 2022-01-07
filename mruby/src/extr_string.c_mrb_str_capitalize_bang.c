
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_bool ;


 scalar_t__ FALSE ;
 scalar_t__ ISLOWER (char) ;
 scalar_t__ ISUPPER (char) ;
 int RSTR_LEN (struct RString*) ;
 char* RSTR_PTR (struct RString*) ;
 char TOLOWER (char) ;
 char TOUPPER (char) ;
 scalar_t__ TRUE ;
 int mrb_nil_value () ;
 int mrb_str_modify_keep_ascii (int *,struct RString*) ;
 struct RString* mrb_str_ptr (int ) ;

__attribute__((used)) static mrb_value
mrb_str_capitalize_bang(mrb_state *mrb, mrb_value str)
{
  char *p, *pend;
  mrb_bool modify = FALSE;
  struct RString *s = mrb_str_ptr(str);

  mrb_str_modify_keep_ascii(mrb, s);
  if (RSTR_LEN(s) == 0 || !RSTR_PTR(s)) return mrb_nil_value();
  p = RSTR_PTR(s); pend = RSTR_PTR(s) + RSTR_LEN(s);
  if (ISLOWER(*p)) {
    *p = TOUPPER(*p);
    modify = TRUE;
  }
  while (++p < pend) {
    if (ISUPPER(*p)) {
      *p = TOLOWER(*p);
      modify = TRUE;
    }
  }
  if (modify) return str;
  return mrb_nil_value();
}
