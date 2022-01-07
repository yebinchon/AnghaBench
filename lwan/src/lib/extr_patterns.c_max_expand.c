
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_state {int dummy; } ;
typedef int ptrdiff_t ;


 char* match (struct match_state*,char const*,char const*) ;
 scalar_t__ singlematch (struct match_state*,char const*,char const*,char const*) ;

__attribute__((used)) static const char *
max_expand(struct match_state *ms, const char *s, const char *p, const char *ep)
{
 ptrdiff_t i = 0;

 while (singlematch(ms, s + i, p, ep))
  i++;

 while (i >= 0) {
  const char *res = match(ms, (s + i), ep + 1);
  if (res)
   return res;

  i--;
 }
 return ((void*)0);
}
