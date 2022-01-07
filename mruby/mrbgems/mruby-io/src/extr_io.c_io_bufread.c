
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 struct RString* RSTRING (int ) ;
 int RSTR_LEN (struct RString*) ;
 char* RSTR_PTR (struct RString*) ;
 int RSTR_SET_LEN (struct RString*,int) ;
 int memmove (char*,char*,int) ;
 int mrb_get_args (int *,char*,int *,int*) ;
 int mrb_str_modify (int *,struct RString*) ;
 int mrb_str_new (int *,char*,int) ;

__attribute__((used)) static mrb_value
io_bufread(mrb_state *mrb, mrb_value self)
{
  mrb_value str, str2;
  mrb_int len, newlen;
  struct RString *s;
  char *p;

  mrb_get_args(mrb, "Si", &str, &len);
  s = RSTRING(str);
  mrb_str_modify(mrb, s);
  p = RSTR_PTR(s);
  str2 = mrb_str_new(mrb, p, len);
  newlen = RSTR_LEN(s)-len;
  memmove(p, p+len, newlen);
  p[newlen] = '\0';
  RSTR_SET_LEN(s, newlen);

  return str2;
}
