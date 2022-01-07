
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_state ;


 scalar_t__ RSTR_EMBEDDABLE_P (size_t) ;
 struct RString* str_init_embed (struct RString*,char const*,size_t) ;
 struct RString* str_init_normal (int *,struct RString*,char const*,size_t) ;

__attribute__((used)) static struct RString*
str_init_modifiable(mrb_state *mrb, struct RString *s, const char *p, size_t len)
{
  if (RSTR_EMBEDDABLE_P(len)) {
    return str_init_embed(s, p, len);
  }
  else {
    return str_init_normal(mrb, s, p, len);
  }
}
