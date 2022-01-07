
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gstr {char const* s; size_t len; } ;


 char const* realloc (char const*,size_t) ;
 int strcat (char const*,char const*) ;
 int strlen (char const*) ;

void str_append(struct gstr *gs, const char *s)
{
 size_t l;
 if (s) {
  l = strlen(gs->s) + strlen(s) + 1;
  if (l > gs->len) {
   gs->s = realloc(gs->s, l);
   gs->len = l;
  }
  strcat(gs->s, s);
 }
}
