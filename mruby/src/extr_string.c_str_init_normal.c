
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_state ;


 struct RString* str_init_normal_capa (int *,struct RString*,char const*,size_t,size_t) ;

__attribute__((used)) static struct RString*
str_init_normal(mrb_state *mrb, struct RString *s, const char *p, size_t len)
{
  return str_init_normal_capa(mrb, s, p, len, len);
}
