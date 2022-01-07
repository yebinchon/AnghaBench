
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_state {int dummy; } ;


 char* match (struct match_state*,char const*,char const*) ;
 scalar_t__ singlematch (struct match_state*,char const*,char const*,char const*) ;

__attribute__((used)) static const char *
min_expand(struct match_state *ms, const char *s, const char *p, const char *ep)
{
 for (;;) {
  const char *res = match(ms, s, ep + 1);
  if (res != ((void*)0))
   return res;
  else if (singlematch(ms, s, p, ep))
   s++;
  else
   return ((void*)0);
 }
}
