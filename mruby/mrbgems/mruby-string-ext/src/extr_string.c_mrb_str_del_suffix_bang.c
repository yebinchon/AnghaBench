
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 struct RString* RSTRING (int ) ;
 scalar_t__ RSTR_FSHARED_P (struct RString*) ;
 scalar_t__ RSTR_LEN (struct RString*) ;
 char* RSTR_PTR (struct RString*) ;
 int RSTR_SET_LEN (struct RString*,scalar_t__) ;
 scalar_t__ RSTR_SHARED_P (struct RString*) ;
 scalar_t__ memcmp (char*,char*,scalar_t__) ;
 int mrb_frozen_p (struct RString*) ;
 int mrb_get_args (int *,char*,char**,scalar_t__*) ;
 int mrb_nil_value () ;
 int mrb_str_modify (int *,struct RString*) ;

__attribute__((used)) static mrb_value
mrb_str_del_suffix_bang(mrb_state *mrb, mrb_value self)
{
  mrb_int plen, slen;
  char *ptr, *s;
  struct RString *str = RSTRING(self);

  mrb_get_args(mrb, "s", &ptr, &plen);
  slen = RSTR_LEN(str);
  if (plen > slen) return mrb_nil_value();
  s = RSTR_PTR(str);
  if (memcmp(s+slen-plen, ptr, plen) != 0) return mrb_nil_value();
  if (!mrb_frozen_p(str) && (RSTR_SHARED_P(str) || RSTR_FSHARED_P(str))) {

  }
  else {
    mrb_str_modify(mrb, str);
  }
  RSTR_SET_LEN(str, slen-plen);
  return self;
}
