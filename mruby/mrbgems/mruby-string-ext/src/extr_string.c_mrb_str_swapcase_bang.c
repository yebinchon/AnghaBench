
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ ISLOWER (char) ;
 scalar_t__ ISUPPER (char) ;
 int RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 char TOLOWER (char) ;
 char TOUPPER (char) ;
 int mrb_nil_value () ;
 int mrb_str_modify (int *,struct RString*) ;
 struct RString* mrb_str_ptr (int ) ;

__attribute__((used)) static mrb_value
mrb_str_swapcase_bang(mrb_state *mrb, mrb_value str)
{
  char *p, *pend;
  int modify = 0;
  struct RString *s = mrb_str_ptr(str);

  mrb_str_modify(mrb, s);
  p = RSTRING_PTR(str);
  pend = p + RSTRING_LEN(str);
  while (p < pend) {
    if (ISUPPER(*p)) {
      *p = TOLOWER(*p);
      modify = 1;
    }
    else if (ISLOWER(*p)) {
      *p = TOUPPER(*p);
      modify = 1;
    }
    p++;
  }

  if (modify) return str;
  return mrb_nil_value();
}
